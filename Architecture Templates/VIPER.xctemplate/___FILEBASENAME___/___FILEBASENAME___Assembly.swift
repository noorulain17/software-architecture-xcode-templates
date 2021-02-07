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

final class ___FILEBASENAMEASIDENTIFIER___: NSObject {
    required override init() {
        super.init()
    }

    func assemblyModule() -> UIViewController {
        return self.viewModule()
    }
}

// MARK: - Private methods

private extension ___FILEBASENAMEASIDENTIFIER___ {
    func viewModule() -> ___VARIABLE_productName___ViewController {
        let viewController = ___VARIABLE_productName___ViewController(nibName: "", bundle: nil)
        viewController.presenter = self.presenterModule(with: viewController)
        return viewController
    }

    func interactorModule(with presenter: ___VARIABLE_productName___Presenter?) -> ___VARIABLE_productName___Interactor? {
        let interactor = ___VARIABLE_productName___Interactor()
        interactor.presenter = presenter
        return interactor
    }

    func presenterModule(with viewController: ___VARIABLE_productName___ViewController?) -> ___VARIABLE_productName___Presenter? {
        let router = routerModule()
        let presenter = ___VARIABLE_productName___Presenter()
        presenter.router = router
        presenter.userInterface = viewController
        presenter.interactor = interactorModule(with: presenter)
        return presenter
    }

    func routerModule() -> ___VARIABLE_productName___Router? {
        let router = ___VARIABLE_productName___Router()
        return router
    }
}
