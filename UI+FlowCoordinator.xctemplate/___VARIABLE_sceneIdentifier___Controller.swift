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

import UIKit

// MARK: ___VARIABLE_sceneIdentifier___Controller
final class ___VARIABLE_sceneIdentifier___Controller: UIViewController {

    // MARK: DI Variable
    lazy var _view: ___VARIABLE_sceneIdentifier___View = {
        return Default___VARIABLE_sceneIdentifier___View(
            navigationBar: self.navigationController?.navigationBar,
            navigationItem: self.navigationItem
        )
    }()
    var viewModel: ___VARIABLE_sceneIdentifier___ViewModel!

    // MARK: Common Variable


    // MARK: Create Function
    class func create(with viewModel: ___VARIABLE_sceneIdentifier___ViewModel) -> ___VARIABLE_sceneIdentifier___Controller {
        let vc = ___VARIABLE_sceneIdentifier___Controller()
        vc.viewModel = viewModel
        return vc
    }

    // MARK: UIViewController Function
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
        self.view = (self._view as! UIView)
    }
    
    private func setupViewWillAppear() {
        self._view.viewWillAppear()
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
