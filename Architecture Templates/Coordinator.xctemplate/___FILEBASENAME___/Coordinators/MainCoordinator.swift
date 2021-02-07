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

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewCoordinator = ___FILEBASENAMEASIDENTIFIER___ViewController.instantiate()
        viewCoordinator.coordinator = self
        navigationController.pushViewController(viewCoordinator, animated: false)
    }
}
