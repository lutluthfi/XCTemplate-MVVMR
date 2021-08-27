//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import Foundation

protocol ___VARIABLE_sceneIdentifier___ViewModelInterface: AnyObject {
    
}

struct ___VARIABLE_sceneIdentifier___ViewModelRequest {
}

enum ___VARIABLE_sceneIdentifier___ViewModelResponse {
}

protocol ___VARIABLE_sceneIdentifier___ViewModelDelegate: AnyObject {
}

enum ___VARIABLE_sceneIdentifier___ViewModelRoute {
}

protocol ___VARIABLE_sceneIdentifier___ViewModelInput {
    func viewDidLoad()
}

protocol ___VARIABLE_sceneIdentifier___ViewModelOutput {
}

protocol ___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModelInput,
                                                  ___VARIABLE_sceneIdentifier___ViewModelOutput,
                                                  ___VARIABLE_sceneIdentifier___ViewModelInterface { }

final class Default___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModel {

    weak var delegate: ___VARIABLE_sceneIdentifier___ViewModelDelegate?
    let request: ___VARIABLE_sceneIdentifier___ViewModelRequest

    init(request: ___VARIABLE_sceneIdentifier___ViewModelRequest) {
        self.request = request
    }

}

// MARK: Input ViewModel
extension Default___VARIABLE_sceneIdentifier___ViewModel {

    func viewDidLoad() {
    }

}

// MARK: Interface ViewModel
extension Default___VARIABLE_sceneIdentifier___ViewModel {
    
}

// MARK: Output ViewModel
extension Default___VARIABLE_sceneIdentifier___ViewModel {
    
}
