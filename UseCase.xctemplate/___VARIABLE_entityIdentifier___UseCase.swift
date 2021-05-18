//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import Foundation

public enum ___VARIABLE_entityIdentifier___Error: LocalizedError {
    
}

extension ___VARIABLE_entityIdentifier___Error {
    
    public var errorDescription: String? {
        switch self {
        }
    }
    
}

public struct ___VARIABLE_entityIdentifier___Response {
    
}

public struct ___VARIABLE_entityIdentifier___Request {

}

public protocol ___VARIABLE_entityIdentifier___ {
    func execute(_ request: ___VARIABLE_entityIdentifier___Request,
                 completion: @escaping (Result<___VARIABLE_entityIdentifier___Response, Error>) -> Void)
}

public final class Default___VARIABLE_entityIdentifier___ {

    public init() {
    }

}

extension Default___VARIABLE_entityIdentifier___: ___VARIABLE_entityIdentifier___ {

    public func execute(_ request: ___VARIABLE_entityIdentifier___Request,
                        completion: @escaping (Result<___VARIABLE_entityIdentifier___Response, Error>) -> Void) {
        
    }
    
}
