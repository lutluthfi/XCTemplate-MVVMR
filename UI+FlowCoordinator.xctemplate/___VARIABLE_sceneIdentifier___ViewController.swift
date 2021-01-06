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

// MARK: ___VARIABLE_sceneIdentifier___ViewController
final class ___VARIABLE_sceneIdentifier___ViewController: UIViewController, StoryboardInstantiable {

    // MARK: DI Variable
    lazy var _view: ___VARIABLE_sceneIdentifier___View = {
        return ___VARIABLE_sceneIdentifier___View(controller: self)
    }()
    var viewModel: ___VARIABLE_sceneIdentifier___ViewModel!

    // MARK: Common Variable


    // MARK: Create Function
    class func create(with viewModel: ___VARIABLE_sceneIdentifier___ViewModel) -> ___VARIABLE_sceneIdentifier___ViewController {
        let vc = ___VARIABLE_sceneIdentifier___ViewController.instantiateViewController()
        vc.viewModel = viewModel
        return vc
    }

    // MARK: - UIViewController Function
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
        self.view = self._view
    }
    
    private func setupViewWillAppear() {
    }
    
    private func setupViewWillDisappear() {
    }
    
}

// MARK: Observe ViewModel Function
private extension ___VARIABLE_sceneIdentifier___ViewController {

}
