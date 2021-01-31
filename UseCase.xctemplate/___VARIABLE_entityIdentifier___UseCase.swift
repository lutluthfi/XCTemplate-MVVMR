//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import Foundation

public struct ___VARIABLE_entityIdentifier___UseCaseResponseValue {
    
}

public struct ___VARIABLE_entityIdentifier___UseCaseRequestValue {

}

public protocol ___VARIABLE_entityIdentifier___UseCase {
    
    func execute(
        _ requestValue: ___VARIABLE_entityIdentifier___UseCaseRequestValue,
        completion: @escaping (Result<___VARIABLE_entityIdentifier___UseCaseResponseValue, Error>) -> Void
    )

}

public final class Default___VARIABLE_entityIdentifier___UseCase {

    public init() {
    }

}

extension Default___VARIABLE_entityIdentifier___UseCase: ___VARIABLE_entityIdentifier___UseCase {

    public func execute(
        _ requestValue: ___VARIABLE_entityIdentifier___UseCaseRequestValue,
        completion: @escaping (Result<___VARIABLE_entityIdentifier___UseCaseResponseValue, Error>) -> Void
    ) {
        
    }
    
}
