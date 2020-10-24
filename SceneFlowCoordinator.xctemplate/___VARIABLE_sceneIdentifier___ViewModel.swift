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

// MARK: - ___VARIABLE_sceneIdentifier___ViewModelResponseFailure
enum ___VARIABLE_sceneIdentifier___ViewModelResponseFailure {
}

// MARK: - ___VARIABLE_sceneIdentifier___ViewModelResponseSuccess
enum ___VARIABLE_sceneIdentifier___ViewModelResponseSuccess {
}

// MARK: - ___VARIABLE_sceneIdentifier___ViewModelDelegate
protocol ___VARIABLE_sceneIdentifier___ViewModelDelegate: class {
}

// MARK: - ___VARIABLE_sceneIdentifier___ViewModelRequestValue
struct ___VARIABLE_sceneIdentifier___ViewModelRequestValue {
}

// MARK: - ___VARIABLE_sceneIdentifier___ViewModelRoute
struct ___VARIABLE_sceneIdentifier___ViewModelRoute {
}

// MARK: - ___VARIABLE_sceneIdentifier___ViewModelInput
protocol ___VARIABLE_sceneIdentifier___ViewModelInput {

    func viewDidLoad()

}

// MARK: - ___VARIABLE_sceneIdentifier___ViewModelOutput
protocol ___VARIABLE_sceneIdentifier___ViewModelOutput {

    // Uncomment these following codes after you make sure Observable class is available to access
    //
    // var responseFailure: Observable<___VARIABLE_sceneIdentifier___ViewModelResponseFailure?> { get }
    // var responseSuccess: Observable<___VARIABLE_sceneIdentifier___ViewModelResponseSuccess?> { get }

}

// MARK: - ___VARIABLE_sceneIdentifier___ViewModel
protocol ___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModelInput,
                                                  ___VARIABLE_sceneIdentifier___ViewModelOutput { }

// MARK: - Default___VARIABLE_sceneIdentifier___ViewModel
class Default___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModel {

    // MARK: - DI Variable
    private weak var delegate: ___VARIABLE_sceneIdentifier___ViewModelDelegate?
    private let requestValue: ___VARIABLE_sceneIdentifier___ViewModelRequestValue
    private let route: ___VARIABLE_sceneIdentifier___ViewModelRoute

    // MARK: - UseCase Variable



    // MARK: - Common Variable

    

    // MARK: - Output ViewModel
    // let responseFailure = Observable<___VARIABLE_sceneIdentifier___ViewModelResponseFailure?>(nil)
    // let responseSuccess = Observable<___VARIABLE_sceneIdentifier___ViewModelResponseSuccess?>(nil)
    

    // MARK: - Init Function
    init(
        requestValue: ___VARIABLE_sceneIdentifier___ViewModelRequestValue,
        route: ___VARIABLE_sceneIdentifier___ViewModelRoute
    ) {
        self.requestValue = requestValue
        self.route = route
    }
    
}

// MARK: - Input ViewModel
extension Default___VARIABLE_sceneIdentifier___ViewModel {
    
    func viewDidLoad() {
    }
    
}

// MARK: - Private Function
extension Default___VARIABLE_sceneIdentifier___ViewModel {
    
}
