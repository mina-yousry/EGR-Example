//
//  VC1Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

protocol VC4RouterProtocol: VCBaseRouterProtocol where Routes == VC4Routes {}

class VC4Router: VC4RouterProtocol {
    
    var currentVC: UIViewController?
    
    func start(vc: UIViewController) {
        let vc4 = ViewController4(nibName: "ViewController4", bundle: nil)
        vc4.router = self
        self.currentVC = vc4
        vc.navigationController?.pushViewController(vc4, animated: true)
    }
}

enum VC4Routes {}
