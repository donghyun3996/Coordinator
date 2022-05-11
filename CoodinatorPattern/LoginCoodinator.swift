//
//  LoginCoodinator.swift
//  CoodinatorPattern
//
//  Created by 동현 on 2022/05/11.
//

import UIKit



protocol LoginCoordinatorDelegate {
    func didLoggedIn(_ coordinator: LoginCoodinator)
}

class LoginCoodinator: Coordinator, LoginViewControllerDelegate {

    var childCoordinators: [Coordinator] = []
    var delegate: LoginCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        viewController.view.backgroundColor = .brown
        viewController.delegate = self
        
        self.navigationController.viewControllers = [viewController]
    }
    
    func login() {
        self.delegate?.didLoggedIn(self)
    }
}
