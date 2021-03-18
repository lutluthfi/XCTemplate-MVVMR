//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.

import UIKit

final class ___VARIABLE_sceneIdentifier___Controller: UIViewController {
    
    lazy var _view: ___VARIABLE_sceneIdentifier___View = {
        return Default___VARIABLE_sceneIdentifier___View(navigationBar: self.navigationController?.navigationBar,
                                                         navigationItem: self.navigationItem)
    }()
    var viewModel: ___VARIABLE_sceneIdentifier___ViewModel!
    
    class func create(with viewModel: ___VARIABLE_sceneIdentifier___ViewModel) -> ___VARIABLE_sceneIdentifier___Controller {
        let controller = ___VARIABLE_sceneIdentifier___Controller()
        controller.viewModel = viewModel
        return vc
    }
    
    override func loadView() {
        self.view = (self._view as! UIView)
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
    }
    
}

extension ___VARIABLE_sceneIdentifier___Controller {
    
    func route(_ route: ___VARIABLE_sceneIdentifier___ViewModelRoute) {
        
    }
    
}
