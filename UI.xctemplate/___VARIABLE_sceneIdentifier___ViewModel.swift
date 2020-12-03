//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//
//  Template:
//  Modified by Arif Luthfiansyah
//  Created by Oleh Kudinov

import Foundation

enum ___VARIABLE_sceneIdentifier___ViewModelResponse {
}

protocol ___VARIABLE_sceneIdentifier___ViewModelDelegate: class {
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

class Default___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModel {

    private weak var delegate: ___VARIABLE_sceneIdentifier___ViewModelDelegate?
    private let requestValue: ___VARIABLE_sceneIdentifier___ViewModelRequestValue
    private let route: ___VARIABLE_sceneIdentifier___ViewModelRoute

    // MARK: - OUTPUT

    init(
        requestValue: ___VARIABLE_sceneIdentifier___ViewModelRequestValue,
        route: ___VARIABLE_sceneIdentifier___ViewModelRoute
    ) {
        self.requestValue = requestValue
        self.route = route
    }

}

// MARK: - INPUT
extension Default___VARIABLE_sceneIdentifier___ViewModel {

    func viewDidLoad() {
    }

}

// MARK: - Private Function
extension Default___VARIABLE_sceneIdentifier___ViewModel {

}
