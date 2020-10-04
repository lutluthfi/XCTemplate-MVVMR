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

// MARK: - ___VARIABLE_sceneIdentifier___ViewController
class ___VARIABLE_sceneIdentifier___ViewController: UIViewController, StoryboardInstantiable {

    // MARK: - Public Component View Variable



    // MARK: - @IBOutlet Variable



    // MARK: - Private Component View Variable



    // MARK: - DI Variable
    private var viewModel: ___VARIABLE_sceneIdentifier___ViewModel!

    // MARK: - Common Variable


    // MARK: - Create Function
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

    // MARK: - @objc Function

    

    // MARK: - Bind ViewModel Function
    private func bind(to viewModel: ___VARIABLE_sceneIdentifier___ViewModel) {
    }

    // MARK: - SetupView By Lifecycle Function
    private func setupViewDidLoad() {
        self.implementComponentView()
    }
    
    private func setupViewWillAppear() {
    }
    
    private func setupViewWillDisappear() {
    }
    
}

// MARK: - Observe ViewModel Function
private extension ___VARIABLE_sceneIdentifier___ViewController {

}

// MARK: - Other Private Function
private extension ___VARIABLE_sceneIdentifier___ViewController {

}

// MARK: - Component View Function
private extension ___VARIABLE_sceneIdentifier___ViewController {

    func implementComponentView() {

    }

}
