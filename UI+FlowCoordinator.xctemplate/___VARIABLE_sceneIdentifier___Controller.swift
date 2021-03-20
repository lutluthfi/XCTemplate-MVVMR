//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.

import UIKit

// MARK: ___VARIABLE_sceneIdentifier___Controller
final class ___VARIABLE_sceneIdentifier___Controller: UIViewController {

    // MARK: DI Variable
    lazy var _view: ___VARIABLE_sceneIdentifier___View = {
        return Default___VARIABLE_sceneIdentifier___View()
    }()
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
        self.view = (self._view as! UIView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewDidLoad()
        self.bind(to: self.viewModel)
        self.viewModel.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setupViewWillAppear()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.setupViewWillDisappear()
    }

    // MARK: Bind ViewModel Function
    private func bind(to viewModel: ___VARIABLE_sceneIdentifier___ViewModel) {
    }

    // MARK: SetupView By Lifecycle Function
    private func setupViewDidLoad() {
    }
    
    private func setupViewWillAppear() {
        self._view.viewWillAppear(navigationController: self.navigationController,
                                  tabBarController: self.tabBarController)
    }
    
    private func setupViewWillDisappear() {
        self._view.viewWillDisappear()
    }
    
}

// MARK: Observe ViewModel Function
extension ___VARIABLE_sceneIdentifier___Controller {
    
}

// MARK: ___VARIABLE_sceneIdentifier___ViewDelegate
extension ___VARIABLE_sceneIdentifier___Controller: ___VARIABLE_sceneIdentifier___ViewDelegate {

}
