//
//  VC1Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

class VC4Router {
    
    var currentVC: UIViewController?
    
    func start(vc: UIViewController) {
        let vc4 = ViewController4(nibName: "ViewController4", bundle: nil)
        vc4.router = self
        self.currentVC = vc4
        vc.navigationController?.pushViewController(vc4, animated: true)
    }
}
