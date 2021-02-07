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
    let viewModel: ___VARIABLE_productName___ViewModel
    let mainView: ___VARIABLE_productName___View
    
    init() {
        viewModel = ___VARIABLE_productName___ViewModel(withModel: ___VARIABLE_productName___())
        mainView = ___VARIABLE_productName___View()
        super.init(nibName: nil, bundle: nil)
        
        mainView.configure(withViewModel: viewModel)
    }
    
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - Private methods

private extension ___FILEBASENAMEASIDENTIFIER___ {
    func setupView() {
        view.addSubview(mainView)
    }
}
