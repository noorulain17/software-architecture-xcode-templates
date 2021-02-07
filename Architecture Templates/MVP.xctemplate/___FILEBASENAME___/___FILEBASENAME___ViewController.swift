//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Module: ___VARIABLE_productName___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    let presenter: ___VARIABLE_productName:identifier___Presenter

    init() {
        presenter = ___VARIABLE_productName:identifier___Presenter(withModel: ___VARIABLE_productName:identifier___Model(), viewDelegate: self)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - ___VARIABLE_productName:identifier___ViewDelegate

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___ViewDelegate {
}

// MARK: - Private methods

private extension ___FILEBASENAMEASIDENTIFIER___ {
}
