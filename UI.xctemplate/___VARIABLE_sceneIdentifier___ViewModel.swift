//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.

import Foundation

enum ___VARIABLE_sceneIdentifier___ViewModelResponse {
}

protocol ___VARIABLE_sceneIdentifier___ViewModelDelegate: AnyObject {
}

struct ___VARIABLE_sceneIdentifier___ViewModelRequestValue {
}

struct ___VARIABLE_sceneIdentifier___ViewModelRoute {
}

protocol ___VARIABLE_sceneIdentifier___ViewModelInput {
    func viewDidLoad()
}

protocol ___VARIABLE_sceneIdentifier___ViewModelOutput {
}

protocol ___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModelInput, ___VARIABLE_sceneIdentifier___ViewModelOutput { }

final class Default___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModel {

    // MARK: Dependency Variable
    weak var delegate: ___VARIABLE_sceneIdentifier___ViewModelDelegate?
    let requestValue: ___VARIABLE_sceneIdentifier___ViewModelRequestValue
    let route: ___VARIABLE_sceneIdentifier___ViewModelRoute

    // MARK: Output ViewModel Variable

    init(requestValue: ___VARIABLE_sceneIdentifier___ViewModelRequestValue,
         route: ___VARIABLE_sceneIdentifier___ViewModelRoute) {
        self.requestValue = requestValue
        self.route = route
    }

}

// MARK: Input ViewModel Function
extension Default___VARIABLE_sceneIdentifier___ViewModel {

    func viewDidLoad() {
    }

}

// MARK: Internal Function
extension Default___VARIABLE_sceneIdentifier___ViewModel {

}
