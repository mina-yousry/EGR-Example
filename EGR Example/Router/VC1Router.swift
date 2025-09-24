//
//  VC1Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

class VC1Router {
    
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
    
    func goToViewController2() {
        let vc2Router = VC2Router()
        guard let vc = currentVC else { return }
        vc2Router.start(vc: vc)
    }
    
    func goToViewController3() {
        let vc3Router = VC3Router()
        guard let vc = currentVC else { return }
        vc3Router.start(vc: vc)
    }
}
