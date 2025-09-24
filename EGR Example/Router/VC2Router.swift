//
//  VC2Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

protocol VC2RouterProtocol: VCBaseRouterProtocol where Routes == VC2Routes {}

class VC2Router: VC2RouterProtocol {
    
    var currentVC: UIViewController?
    
    func start(vc: UIViewController) {
        let vc2 = ViewController2(nibName: "ViewController2", bundle: nil)
        vc2.router = self
        self.currentVC = vc2
        vc.navigationController?.pushViewController(vc2, animated: true)
    }
    
    func navigate(to route: VC2Routes) {
        switch route {
        case .vc4:
            goToViewController4()
        case .vc5:
            goToViewController5()
        }
    }
    
    private func goToViewController4() {
        let vc4Router = VC4Router()
        guard let vc = currentVC else { return }
        vc4Router.start(vc: vc)
    }
    
    private func goToViewController5() {
        let vc5Router = VC5Router()
        guard let vc = currentVC else { return }
        vc5Router.start(vc: vc)
    }
}

enum VC2Routes {
    case vc4
    case vc5
}
