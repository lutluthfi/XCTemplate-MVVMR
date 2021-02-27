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

// MARK: ___VARIABLE_sceneIdentifier___ViewInput
protocol ___VARIABLE_sceneIdentifier___ViewInput {
    func viewWillAppear()
    func viewWillDisappear()
}

// MARK: ___VARIABLE_sceneIdentifier___ViewSubview
protocol ___VARIABLE_sceneIdentifier___ViewSubview {
    var navigationBar: UINavigationBar? { get }
    var navigationItem: UINavigationItem! { get }
}

// MARK: ___VARIABLE_sceneIdentifier___View
protocol ___VARIABLE_sceneIdentifier___View: ___VARIABLE_sceneIdentifier___ViewInput,
                                             ___VARIABLE_sceneIdentifier___ViewSubview { }

// MARK: Default___VARIABLE_sceneIdentifier___View
final class Default___VARIABLE_sceneIdentifier___View: UIView {

    // MARK: Subview Variable
    weak var navigationBar: UINavigationBar?
    weak var navigationItem: UINavigationItem!

    // MARK: Init Function
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(navigationBar: UINavigationBar?, navigationItem: UINavigationItem) {
        self.navigationBar = navigationBar
        self.navigationItem = navigationItem
        super.init(frame: UIScreen.main.fixedCoordinateSpace.bounds)
        self.addSubviews()
        self.makeConstraints()
    }

}

// MARK: Internal Function
extension Default___VARIABLE_sceneIdentifier___View {
    
    func addSubviews() {
    }
    
    func makeConstraints() {
    }
    
}

// MARK: Input Function
extension Default___VARIABLE_sceneIdentifier___View {
    
    func viewWillAppear() {
        
    }
    
    func viewWillDisappear() {
        
    }
    
}
