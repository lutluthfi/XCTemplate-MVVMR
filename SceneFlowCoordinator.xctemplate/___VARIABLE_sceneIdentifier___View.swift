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

// MARK: _ ___VARIABLE_sceneIdentifier___View
final class ___VARIABLE_sceneIdentifier___View: UIView {

    // MARK: Subview Variable

    // MARK: Init Function
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init() {
        super.init(frame: UIScreen.main.fixedCoordinateSpace.bounds)
        self.subviewDidInit()
        self.subviewConstraintDidInit()
    }

    // MARK: Subview Init Function
    private func subviewDidInit() {
    }

    private func subviewConstraintDidInit() {
    }

}
