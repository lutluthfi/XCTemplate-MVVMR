//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.

import UIKit

// MARK: ___VARIABLE_sceneIdentifier___ViewDelegate
protocol ___VARIABLE_sceneIdentifier___ViewDelegate: AnyObject {
    
}

// MARK: ___VARIABLE_sceneIdentifier___ViewFunction
protocol ___VARIABLE_sceneIdentifier___ViewFunction {
    func viewWillAppear(navigationBar: UINavigationBar?,
                        navigationItem: UINavigationItem,
                        tabBarController: UITabBarController?)
    func viewWillDisappear()
}

// MARK: ___VARIABLE_sceneIdentifier___ViewSubview
protocol ___VARIABLE_sceneIdentifier___ViewSubview {
}

// MARK: ___VARIABLE_sceneIdentifier___ViewVariable
protocol ___VARIABLE_sceneIdentifier___ViewVariable {
    var delegate: ___VARIABLE_sceneIdentifier___ViewDelegate? { get }
}

// MARK: ___VARIABLE_sceneIdentifier___View
protocol ___VARIABLE_sceneIdentifier___View: ___VARIABLE_sceneIdentifier___ViewFunction, ___VARIABLE_sceneIdentifier___ViewSubview, ___VARIABLE_sceneIdentifier___ViewVariable { }

// MARK: Default___VARIABLE_sceneIdentifier___View
final class Default___VARIABLE_sceneIdentifier___View: UIView, ___VARIABLE_sceneIdentifier___View {

    // MARK: ___VARIABLE_sceneIdentifier___ViewSubview

    // MARK: ___VARIABLE_sceneIdentifier___ViewVariable
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

// MARK: Internal Function
extension Default___VARIABLE_sceneIdentifier___View {
    
    func subviewWillAdd() {
    }
    
    func subviewConstraintWillMake() {
    }
    
    func subviewDidLayout() {
    }
    
    func viewDidInit() {
    }
    
}

// MARK: ___VARIABLE_sceneIdentifier___ViewFunction
extension Default___VARIABLE_sceneIdentifier___View {
    
    func viewWillAppear(navigationBar: UINavigationBar?,
                        navigationItem: UINavigationItem,
                        tabBarController: UITabBarController?) {
    }
    
    func viewWillDisappear() {
        
    }
    
}
