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

// MARK: ___VARIABLE_sceneIdentifier___ViewDelegate
protocol ___VARIABLE_sceneIdentifier___ViewDelegate: AnyObject {
    
}

// MARK: ___VARIABLE_sceneIdentifier___View
final class ___VARIABLE_sceneIdentifier___View: UIView {

    weak var navigationBar: UINavigationBar?
    weak var navigationItem: UINavigationItem!
    weak var delegate: ___VARIABLE_sceneIdentifier___ViewDelegate?
    
    // MARK: Subview Variable

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

    private func addSubviews() {
    }

    private func makeConstraints() {
    }

}
