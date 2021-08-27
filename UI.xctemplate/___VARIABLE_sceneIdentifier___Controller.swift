//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneIdentifier___Controller: UIViewController {
    
    lazy var _view: ___VARIABLE_sceneIdentifier___View = Default___VARIABLE_sceneIdentifier___View()
    private(set) var viewModel: ___VARIABLE_sceneIdentifier___ViewModel!
    
    class func create(with viewModel: ___VARIABLE_sceneIdentifier___ViewModel) -> ___VARIABLE_sceneIdentifier___Controller {
        let controller = ___VARIABLE_sceneIdentifier___Controller()
        controller.viewModel = viewModel
        return controller
    }
    
    override func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
    }
    
}
