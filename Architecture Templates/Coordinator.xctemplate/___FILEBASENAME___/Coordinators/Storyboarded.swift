//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Module: ___VARIABLE_productName___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___ {
    static func instantiate() -> Self
}

extension ___FILEBASENAMEASIDENTIFIER___ where Self: UIViewController {
    static func instantiate() -> Self {
        // this pulls out "App.ViewController"
        let fullName = NSStringFromClass(self)

        // this splits by the dot and uses everything after, giving "ViewController"
        let className = fullName.components(separatedBy: ".")[1]

        // load your storyboard
        let storyboard = UIStoryboard(name: "xxx", bundle: Bundle.main)

        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
