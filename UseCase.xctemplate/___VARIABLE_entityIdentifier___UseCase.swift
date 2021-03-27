//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.

import Foundation

public enum ___VARIABLE_entityIdentifier___UseCaseError: LocalizedError {
    
}

extension ___VARIABLE_entityIdentifier___UseCaseError {
    
    public var errorDescription: String? {
        switch self {
        }
    }
    
}

public struct ___VARIABLE_entityIdentifier___UseCaseResponse {
    
}

public struct ___VARIABLE_entityIdentifier___UseCaseRequest {

}

public protocol ___VARIABLE_entityIdentifier___UseCase {
    
    func execute(_ request: ___VARIABLE_entityIdentifier___UseCaseRequest,
                 completion: @escaping (Result<___VARIABLE_entityIdentifier___UseCaseResponse, Error>) -> Void)

}

public final class Default___VARIABLE_entityIdentifier___UseCase {

    public init() {
    }

}

extension Default___VARIABLE_entityIdentifier___UseCase: ___VARIABLE_entityIdentifier___UseCase {

    public func execute(_ request: ___VARIABLE_entityIdentifier___UseCaseRequest,
                        completion: @escaping (Result<___VARIABLE_entityIdentifier___UseCaseResponse, Error>) -> Void) {
        
    }
    
}
