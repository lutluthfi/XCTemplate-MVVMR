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
    func viewWillAppear()
    func viewWillDisappear()
}

// MARK: ___VARIABLE_sceneIdentifier___ViewSubview
protocol ___VARIABLE_sceneIdentifier___ViewSubview {
    var navigationBar: UINavigationBar? { get }
    var navigationItem: UINavigationItem! { get }
}

// MARK: ___VARIABLE_sceneIdentifier___ViewVariable
protocol ___VARIABLE_sceneIdentifier___ViewVariable {
    var delegate: ___VARIABLE_sceneIdentifier___ViewVariable? { get }
}

// MARK: ___VARIABLE_sceneIdentifier___View
protocol ___VARIABLE_sceneIdentifier___View: ___VARIABLE_sceneIdentifier___ViewFunction, ___VARIABLE_sceneIdentifier___ViewSubview, ___VARIABLE_sceneIdentifier___ViewVariable { }

// MARK: Default___VARIABLE_sceneIdentifier___View
final class Default___VARIABLE_sceneIdentifier___View: UIView, ___VARIABLE_sceneIdentifier___View {

    // MARK: Subview Variable
    weak var navigationBar: UINavigationBar?
    weak var navigationItem: UINavigationItem!

    // MARK: DI Variable
    weak var delegate: ___VARIABLE_sceneIdentifier___ViewDelegate?
    
    // MARK: Init Function
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(navigationBar: UINavigationBar?, navigationItem: UINavigationItem) {
        self.navigationBar = navigationBar
        self.navigationItem = navigationItem
        super.init(frame: UIScreen.main.fixedCoordinateSpace.bounds)
        self.subviewDidInit()
        self.subviewConstraintDidInit()
        self.viewDidInit()
    }

}

// MARK: Internal Function
extension Default___VARIABLE_sceneIdentifier___View {
    
    func subviewDidInit() {
    }
    
    func subviewConstraintDidInit() {
    }
    
    func viewDidInit() {
        
    }
    
}

// MARK: Input Function
extension Default___VARIABLE_sceneIdentifier___View {
    
    func viewWillAppear() {
        
    }
    
    func viewWillDisappear() {
        
    }
    
}
