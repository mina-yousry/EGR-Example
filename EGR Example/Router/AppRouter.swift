//
//  AppRouter.swift
//  EGR Example
//
//  Created by Mina Yousry on 15/09/2025.
//

import Foundation
import UIKit

struct AppRouter {
    func startViewController1(scene: UIScene) -> UIWindow? {
        guard let windowScene = (scene as? UIWindowScene) else { return nil }
        let rootVC = ViewController1(nibName: "ViewController1", bundle: nil)
        rootVC.router = self
        let nav = UINavigationController(rootViewController: rootVC)
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = nav
        window.makeKeyAndVisible()
        return window
    }
    
    func goToViewController2(viewController: UIViewController) {
        let vc2 = ViewController2(nibName: "ViewController2", bundle: nil)
        vc2.router = self
        viewController.navigationController?.pushViewController(vc2, animated: true)
    }
    
    func goToViewController3(viewController: UIViewController) {
        let vc3 = ViewController3(nibName: "ViewController3", bundle: nil)
        vc3.router = self
        viewController.navigationController?.pushViewController(vc3, animated: true)
    }
    
    func goToViewController4(viewController: UIViewController) {
        let vc4 = ViewController4(nibName: "ViewController4", bundle: nil)
        vc4.router = self
        viewController.navigationController?.pushViewController(vc4, animated: true)
    }
    
    func goToViewController5(viewController: UIViewController) {
        let vc5 = ViewController5(nibName: "ViewController5", bundle: nil)
        vc5.router = self
        viewController.navigationController?.pushViewController(vc5, animated: true)
    }
    
    func goToViewController6(viewController: UIViewController) {
        let vc6 = ViewController6(nibName: "ViewController6", bundle: nil)
        vc6.router = self
        viewController.navigationController?.pushViewController(vc6, animated: true)
    }
}
