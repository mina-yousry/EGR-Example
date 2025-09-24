//
//  VC1Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

protocol VC6RouterProtocol: VCBaseRouterProtocol where Routes == VC6Routes {}

class VC6Router: VC6RouterProtocol {
    
    var currentVC: UIViewController?
    
    func start(vc: UIViewController) {
        let vc6 = ViewController6(nibName: "ViewController6", bundle: nil)
        vc6.router = self
        self.currentVC = vc6
        vc.navigationController?.pushViewController(vc6, animated: true)
    }
    
    func navigate(to route: VC6Routes) {
        switch route {
        case .vc4:
            goToViewController4()
        }
    }
    
    private func goToViewController4() {
        let vc4Router = VC4Router()
        guard let vc = currentVC else { return }
        vc4Router.start(vc: vc)
    }
}

enum VC6Routes {
    case vc4
}
