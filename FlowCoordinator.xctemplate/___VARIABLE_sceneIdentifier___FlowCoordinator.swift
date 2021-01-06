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
final class ___VARIABLE_sceneIdentifier___FlowCoordinator {

    // MARK: Instructor Enum
    enum Instructor {
        case initial
    }

    // MARK: DI Variable
    let navigationController: UINavigationController
    let factory: ___VARIABLE_sceneIdentifier___FlowCoordinatorFactory


    // MARK: Init Funciton
    init(navigationController: UINavigationController, factory: ___VARIABLE_sceneIdentifier___FlowCoordinatorFactory) {
        self.navigationController = navigationController
        self.factory = factory
    }


    // MARK: Start Function
    func start(with instructor: Instructor) {
    }
    
}
