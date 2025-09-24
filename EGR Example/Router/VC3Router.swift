//
//  VC1Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

class VC3Router {
    
    var currentVC: UIViewController?
    
    func start(vc: UIViewController) {
        let vc3 = ViewController3(nibName: "ViewController3", bundle: nil)
        vc3.router = self
        self.currentVC = vc3
        vc.navigationController?.pushViewController(vc3, animated: true)
    }
    
    func goToViewController6() {
        let vc6Router = VC6Router()
        guard let vc = currentVC else { return }
        vc6Router.start(vc: vc)
    }
}
