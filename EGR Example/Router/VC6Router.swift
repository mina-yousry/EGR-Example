//
//  VC1Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

class VC6Router {
    
    var currentVC: UIViewController?
    
    func start(vc: UIViewController) {
        let vc6 = ViewController6(nibName: "ViewController6", bundle: nil)
        vc6.router = self
        self.currentVC = vc6
        vc.navigationController?.pushViewController(vc6, animated: true)
    }
    
    func goToViewController4() {
        let vc4Router = VC4Router()
        guard let vc = currentVC else { return }
        vc4Router.start(vc: vc)
    }
}
