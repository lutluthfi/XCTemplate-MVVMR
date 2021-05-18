//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit

// MARK: ___VARIABLE_sceneIdentifier___Controller
final class ___VARIABLE_sceneIdentifier___Controller: UIViewController {

    // MARK: DI Variable
    lazy var _view: ___VARIABLE_sceneIdentifier___View = Default___VARIABLE_sceneIdentifier___View()
    var viewModel: ___VARIABLE_sceneIdentifier___ViewModel!

    // MARK: Common Variable


    // MARK: Create Function
    class func create(with viewModel: ___VARIABLE_sceneIdentifier___ViewModel) -> ___VARIABLE_sceneIdentifier___Controller {
        let controller = ___VARIABLE_sceneIdentifier___Controller()
        controller.viewModel = viewModel
        return controller
    }

    // MARK: UIViewController Function
    override func loadView() {
        self.view = self._view.asView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bind(to: self.viewModel)
        self.viewModel.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self._view.viewWillAppear(navigationBar: self.navigationController?.navigationBar,
                                  navigationItem: self.navigationItem,
                                  tabBarController: self.tabBarController)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self._view.viewWillDisappear()
    }

    // MARK: Bind ViewModel Function
    private func bind(to viewModel: ___VARIABLE_sceneIdentifier___ViewModel) {
    }
    
}

// MARK: Observe ViewModel Function
extension ___VARIABLE_sceneIdentifier___Controller {
    
}

// MARK: ___VARIABLE_sceneIdentifier___ViewDelegate
extension ___VARIABLE_sceneIdentifier___Controller: ___VARIABLE_sceneIdentifier___ViewDelegate {

}
