//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import Foundation
import UIKit

protocol ___VARIABLE_sceneIdentifier___FlowCoordinatorFactory  {
    func make___VARIABLE_sceneIdentifier___ViewController() -> UIViewController
}

class ___VARIABLE_sceneIdentifier___FlowCoordinator {
    enum Instructor {
        case initial
    }
    
    private let navigationController: UINavigationController
    private let factory: ___VARIABLE_sceneIdentifier___FlowCoordinatorFactory

    init(navigationController: UINavigationController, factory: ___VARIABLE_sceneIdentifier___FlowCoordinatorFactory) {
        self.navigationController = navigationController
        self.factory = factory
    }
    
    func start(with instructor: Instructor) {
    }
    
}
