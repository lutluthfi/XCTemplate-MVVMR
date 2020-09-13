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

class ___VARIABLE_sceneIdentifier___ViewController: UIViewController, StoryboardInstantiable {
    
    private var viewModel: ___VARIABLE_sceneIdentifier___ViewModel!
    
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

    

    // MARK: - Private Function
    private func bind(to viewModel: ___VARIABLE_sceneIdentifier___ViewModel) {
    }
    
    private func setupViewDidLoad() {
    }
    
    private func setupViewWillAppear() {
    }
    
    private func setupViewWillDisappear() {
    }
    
}

// MARK: - Observe ViewModel Function
extension ___VARIABLE_sceneIdentifier___ViewController {

}
