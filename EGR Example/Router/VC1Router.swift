//
//  VC1Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

protocol VC1RouterProtocol: AppRouterProtocol where Routes == VC1Routes {}

class VC1Router: VC1RouterProtocol {
    
    var currentVC: UIViewController?
    
    func start(scene: UIScene) -> UIWindow? {
        guard let windowScene = (scene as? UIWindowScene) else { return nil }
        let rootVC = ViewController1(nibName: "ViewController1", bundle: nil)
        rootVC.router = self
        self.currentVC = rootVC
        let nav = UINavigationController(rootViewController: rootVC)
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = nav
        window.makeKeyAndVisible()
        return window
    }
    
    func navigate(to route: VC1Routes) {
        switch route {
        case .vc2:
            goToViewController2()
        case .vc3:
            goToViewController3()
        }
    }
    
    private func goToViewController2() {
        let vc2Router = VC2Router()
        guard let vc = currentVC else { return }
        vc2Router.start(vc: vc)
    }
    
    private func goToViewController3() {
        let vc3Router = VC3Router()
        guard let vc = currentVC else { return }
        vc3Router.start(vc: vc)
    }
}

enum VC1Routes {
    case vc2
    case vc3
}
