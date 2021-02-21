//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneIdentifier___Controller: UIViewController {
    
    lazy var _view: ___VARIABLE_sceneIdentifier___View = {
        return ___VARIABLE_sceneIdentifier___View(navigationBar: self.navigationController?.navigationBar, navigationItem: self.navigationItem)
    }()
    var viewModel: ___VARIABLE_sceneIdentifier___ViewModel!
    
    class func create(with viewModel: ___VARIABLE_sceneIdentifier___ViewModel) -> ___VARIABLE_sceneIdentifier___Controller {
        let vc = ___VARIABLE_sceneIdentifier___Controller()
        vc.viewModel = viewModel
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewDidLoad()
        self.bind(to: self.viewModel)
        self.viewModel.viewDidLoad()
    }
    
    private func bind(to viewModel: ___VARIABLE_sceneIdentifier___ViewModel) {
    }
    
    private func setupViewDidLoad() {
        self.view = self._view
    }
}

// MARK: - Handle Routing
extension ___VARIABLE_sceneIdentifier___Controller {
    
    func route(_ route: ___VARIABLE_sceneIdentifier___ViewModelRoute) {
        
    }
    
}
