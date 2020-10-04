//
//  Endpoint.swift
//  Multi Care
//
//  Created by Arif Luthfiansyah on 01/04/20.
//  Copyright (c) 2020 All rights reserved.
//

import Foundation

public enum HTTPMethodType: String {
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case delete  = "DELETE"
}

public enum BodyEncoding {
    case jsonSerializationData
    case multipart
    case stringEncodingAscii
}

public class Endpoint<R>: ResponseRequestable {
    
    public typealias Response = R
    
    public var path: String
    public var isFullPath: Bool
    public var method: HTTPMethodType
    public var queryParametersEncodable: Encodable? = nil
    public var queryParameters: [String: Any]
    public var headerParamaters: [String: String]
    public var bodyParamaters: [String: Any]
    public var bodyEncoding: BodyEncoding
    public var responseDecoder: ResponseDecoder
    public var multipartParameters: [String : Any]
    
    public init(
        path: String,
        isFullPath: Bool = false,
        method: HTTPMethodType,
        queryParametersEncodable: Encodable? = nil,
        queryParameters: [String: Any] = [:],
        headerParamaters: [String: String] = [:],
        bodyParamaters: [String: Any] = [:],
        bodyEncoding: BodyEncoding = .jsonSerializationData,
        multipartParameters: [String : Any] = [:],
        responseDecoder: ResponseDecoder = JSONResponseDecoder()
    ) {
        self.path = path
        self.isFullPath = isFullPath
        self.method = method
        self.queryParametersEncodable = queryParametersEncodable
        self.queryParameters = queryParameters
        self.headerParamaters = headerParamaters
        self.bodyParamaters = bodyParamaters
        self.bodyEncoding = bodyEncoding
        self.multipartParameters = multipartParameters
        self.responseDecoder = responseDecoder
    }
}

public protocol Requestable {
    var path: String { get }
    var isFullPath: Bool { get }
    var method: HTTPMethodType { get }
    var queryParametersEncodable: Encodable? { get }
    var queryParameters: [String: Any] { get }
    var headerParamaters: [String: String] { get }
    var bodyParamaters: [String: Any] { get }
    var bodyEncoding: BodyEncoding { get }
    var multipartParameters: [String : Any] { get }
    
    func urlRequest(with networkConfig: NetworkConfigurable) throws -> URLRequest
}

public protocol ResponseRequestable: Requestable {
    associatedtype Response
    
    var responseDecoder: ResponseDecoder { get }
}

enum RequestGenerationError: Error {
    case components
}

extension Requestable {
    
    func url(with config: NetworkConfigurable) throws -> URL {
        let baseURL = config.baseURL.absoluteString.last != "/" ? config.baseURL.absoluteString + "/" : config.baseURL.absoluteString
        let endpoint = isFullPath ? path : baseURL.appending(path)
        guard var urlComponents = URLComponents(string: endpoint) else { throw RequestGenerationError.components }
        var urlQueryItems = [URLQueryItem]()
        let queryParameters = try queryParametersEncodable?.toDictionary() ?? self.queryParameters
        queryParameters.forEach {
            urlQueryItems.append(URLQueryItem(name: $0.key, value: "\($0.value)"))
        }
        config.queryParameters.forEach {
            urlQueryItems.append(URLQueryItem(name: $0.key, value: $0.value))
        }
        urlComponents.queryItems = !urlQueryItems.isEmpty ? urlQueryItems : nil
        guard let url = urlComponents.url else { throw RequestGenerationError.components }
        return url
    }
    
    public func urlRequest(with config: NetworkConfigurable) throws -> URLRequest {
        let url = try self.url(with: config)
        var urlRequest = URLRequest(url: url)
        var allHeaders: [String : String] = config.headers
        headerParamaters.forEach { allHeaders.updateValue($1, forKey: $0) }
        if !bodyParamaters.isEmpty {
            if bodyEncoding == .multipart {
                let boundary = "Boundary-\(UUID().uuidString)"
                if allHeaders.contains(where: { $0.key == "Content-Type" }) {
                    allHeaders.updateValue(boundary, forKey: "Content-Type")
                } else {
                    allHeaders["Content-Type"] = boundary
                }
                urlRequest.httpBody = encodeBody(
                    boundary: boundary,
                    bodyParamaters: bodyParamaters,
                    bodyEncoding: bodyEncoding
                )
            } else {
                urlRequest.httpBody = encodeBody(
                    bodyParamaters: bodyParamaters,
                    bodyEncoding: bodyEncoding
                )
            }
        }
        urlRequest.httpMethod = method.rawValue
        urlRequest.allHTTPHeaderFields = allHeaders
        return urlRequest
    }
    
    private func encodeBody(
        boundary: String? = nil,
        bodyParamaters: [String : Any],
        bodyEncoding: BodyEncoding
    ) -> Data? {
        switch bodyEncoding {
        case .jsonSerializationData:
            return try? JSONSerialization.data(withJSONObject: bodyParamaters)
        case .multipart:
            guard
                let boundary = boundary,
                let fileParameter = bodyParamaters.filter({
                    $0.value is URL
                }).first,
                let fileParameterValue = fileParameter.value as? URL,
                let fileData = try? Data(contentsOf: fileParameterValue)
                else { return nil }
            let data = NSMutableData()
            data.appendString(bodyParamaters.multipartFormDataString(for: boundary))
            data.append(fileData.multipartFormDataFile(
                for: boundary,
                fieldName: fileParameter.key,
                fileURL: fileParameterValue
            ))
            return data as Data
        case .stringEncodingAscii:
            return bodyParamaters
                .queryString
                .data(using: String.Encoding.ascii, allowLossyConversion: true)
        }
    }
}

private extension Data {
    
    func multipartFormDataFile(
        for boundary: String,
        fieldName: String,
        fileURL: URL
    ) -> Data {
        let data = NSMutableData()
        data.appendString("--\(boundary)\r\n")
        data.appendString("Content-Disposition: form-data; name=\"\(fieldName)\"; filename=\"\(fileURL.lastPathComponent)\"\r\n")
        data.appendString("Content-Type: \(self.mimeType())\r\n\r\n")
        data.append(self)
        data.appendString("\r\n")
        return data as Data
    }
    
}

private extension Dictionary {
    func multipartFormDataString(for boundary: String) -> String {
        var field = "--\(boundary)\r\n"
        for (key, value) in self {
            field += "Content-Disposition: form-data; name=\"\(key)\"\r\n"
            field += "\r\n"
            field += "\(value)\r\n"
        }
        return field
    }
}

private extension Dictionary {
    var queryString: String {
        return self.map { "\($0.key)=\($0.value)" }
            .joined(separator: "&")
            .addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed) ?? ""
    }
}

private extension Encodable {
    func toDictionary() throws -> [String: Any]? {
        let data = try JSONEncoder().encode(self)
        let josnData = try JSONSerialization.jsonObject(with: data)
        return josnData as? [String : Any]
    }
}

private extension NSMutableData {
    
    func appendString(_ string: String) {
        if let data = string.data(using: .utf8) {
            self.append(data)
        }
    }
    
}

private extension Data {
    
    func mimeType() -> String {
        var b: UInt8 = 0
        self.copyBytes(to: &b, count: 1)
        switch b {
        case 0xFF:
            return "image/jpeg"
        case 0x89:
            return "image/png"
        case 0x47:
            return "image/gif"
        case 0x4D, 0x49:
            return "image/tiff"
        case 0x25:
            return "application/pdf"
        case 0xD0:
            return "application/vnd"
        case 0x46:
            return "text/plain"
        default:
            return "application/octet-stream"
        }
    }
    
}
