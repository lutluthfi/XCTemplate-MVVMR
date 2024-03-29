//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import Foundation

// MARK: ___VARIABLE_sceneIdentifier___ViewModelResponse
enum ___VARIABLE_sceneIdentifier___ViewModelResponse {
}

// MARK: ___VARIABLE_sceneIdentifier___ViewModelDelegate
protocol ___VARIABLE_sceneIdentifier___ViewModelDelegate: class {
}

// MARK: ___VARIABLE_sceneIdentifier___ViewModelRequest
public struct ___VARIABLE_sceneIdentifier___ViewModelRequest {
}

// MARK: ___VARIABLE_sceneIdentifier___ViewModelRoute
public struct ___VARIABLE_sceneIdentifier___ViewModelRoute {
}

// MARK: ___VARIABLE_sceneIdentifier___ViewModelInput
protocol ___VARIABLE_sceneIdentifier___ViewModelInput {

    func viewDidLoad()

}

// MARK: ___VARIABLE_sceneIdentifier___ViewModelOutput
protocol ___VARIABLE_sceneIdentifier___ViewModelOutput {

}

// MARK: ___VARIABLE_sceneIdentifier___ViewModel
protocol ___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModelInput, ___VARIABLE_sceneIdentifier___ViewModelOutput { }

// MARK: Default___VARIABLE_sceneIdentifier___ViewModel
final class Default___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModel {

    // MARK: DI Variable
    weak var delegate: ___VARIABLE_sceneIdentifier___ViewModelDelegate?
    let request: ___VARIABLE_sceneIdentifier___ViewModelRequest
    let route: ___VARIABLE_sceneIdentifier___ViewModelRoute

    // MARK: UseCase Variable



    // MARK: Common Variable

    

    // MARK: Output ViewModel
    

    // MARK: Init Function
    init(request: ___VARIABLE_sceneIdentifier___ViewModelRequest,
         route: ___VARIABLE_sceneIdentifier___ViewModelRoute) {
        self.request = request
        self.route = route
    }
    
}

// MARK: Input ViewModel
extension Default___VARIABLE_sceneIdentifier___ViewModel {
    
    func viewDidLoad() {
    }
    
}
