//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import Foundation
import UIKit

// MARK: ___VARIABLE_sceneIdentifier___FlowCoordinatorFactory
protocol ___VARIABLE_sceneIdentifier___FlowCoordinatorFactory  {
    func make___VARIABLE_sceneIdentifier___ViewController() -> UIViewController
}

// MARK: ___VARIABLE_sceneIdentifier___FlowCoordinator
protocol ___VARIABLE_sceneIdentifier___FlowCoordinator {
    func start(with instructor: ___VARIABLE_sceneIdentifier___FlowCoordinatorInstructor)
}

// MARK: ___VARIABLE_sceneIdentifier___FlowCoordinatorInstructor
enum ___VARIABLE_sceneIdentifier___FlowCoordinatorInstructor {
    
}

// MARK: Default___VARIABLE_sceneIdentifier___FlowCoordinator
final class Default___VARIABLE_sceneIdentifier___FlowCoordinator {

    // MARK: DI Variable
    let navigationController: UINavigationController
    let factory: ___VARIABLE_sceneIdentifier___FlowCoordinatorFactory

    // MARK: Init Funciton
    init(navigationController: UINavigationController, factory: ___VARIABLE_sceneIdentifier___FlowCoordinatorFactory) {
        self.navigationController = navigationController
        self.factory = factory
    }
    
}

extension Default___VARIABLE_sceneIdentifier___FlowCoordinator: ___VARIABLE_sceneIdentifier___FlowCoordinator {
    
    func start(with instructor: ___VARIABLE_sceneIdentifier___FlowCoordinatorInstructor) {
    }
    
}
