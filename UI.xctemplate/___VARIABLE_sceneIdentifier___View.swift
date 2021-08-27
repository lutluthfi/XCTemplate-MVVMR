//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneIdentifier___ViewDelegate: AnyObject {
    
}

protocol ___VARIABLE_sceneIdentifier___ViewFunction {
    func viewWillAppear(navigationBar: UINavigationBar?,
                        navigationItem: UINavigationItem,
                        tabBarController: UITabBarController?)
    func viewWillDisappear()
}

protocol ___VARIABLE_sceneIdentifier___ViewSubview {
}

protocol ___VARIABLE_sceneIdentifier___ViewVariable {
    var delegate: ___VARIABLE_sceneIdentifier___ViewDelegate? { get }
}

protocol ___VARIABLE_sceneIdentifier___View: UIView,
                                             ___VARIABLE_sceneIdentifier___ViewFunction,
                                             ___VARIABLE_sceneIdentifier___ViewSubview,
                                             ___VARIABLE_sceneIdentifier___ViewVariable { }

final class Default___VARIABLE_sceneIdentifier___View: UIView, ___VARIABLE_sceneIdentifier___View {
    
    // ___VARIABLE_sceneIdentifier___ViewSubview
    
    // ___VARIABLE_sceneIdentifier___ViewVariable
    weak var delegate: ___VARIABLE_sceneIdentifier___ViewDelegate?
    
    // MARK: Init Function
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init() {
        super.init(frame: UIScreen.main.fixedCoordinateSpace.bounds)
        self.subviewWillAdd()
        self.subviewConstraintWillMake()
        self.viewDidInit()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.subviewDidLayout()
    }
    
}

extension Default___VARIABLE_sceneIdentifier___View {
    
    func subviewDidLayout() {
    }
    
    func subviewWillAdd() {
    }
    
    func subviewConstraintWillMake() {
    }
    
    func viewDidInit() {
        
    }
    
}

extension Default___VARIABLE_sceneIdentifier___View {
    
    func viewWillAppear(navigationBar: UINavigationBar?,
                        navigationItem: UINavigationItem,
                        tabBarController: UITabBarController?) {
    }
    
    func viewWillDisappear() {
        
    }
    
}
