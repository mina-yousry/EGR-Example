//
//  VC1Router.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

class VC5Router {
    
    var currentVC: UIViewController?
    
    func start(vc: UIViewController) {
        let vc5 = ViewController5(nibName: "ViewController5", bundle: nil)
        vc5.router = self
        self.currentVC = vc5
        vc.navigationController?.pushViewController(vc5, animated: true)
    }
}
