//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import Foundation

public enum ViewModelResult<Success, Failure> {
    case failure(Failure)
    case success(Success)
}
