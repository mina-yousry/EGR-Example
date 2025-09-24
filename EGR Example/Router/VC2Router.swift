//
//  VC2Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

class VC2Router {
    
    var currentVC: UIViewController?
    
    func start(vc: UIViewController) {
        let vc2 = ViewController2(nibName: "ViewController2", bundle: nil)
        vc2.router = self
        self.currentVC = vc2
        vc.navigationController?.pushViewController(vc2, animated: true)
    }
    
    func goToViewController4() {
        let vc4Router = VC4Router()
        guard let vc = currentVC else { return }
        vc4Router.start(vc: vc)
    }
    
    func goToViewController5() {
        let vc5Router = VC5Router()
        guard let vc = currentVC else { return }
        vc5Router.start(vc: vc)
    }
}
