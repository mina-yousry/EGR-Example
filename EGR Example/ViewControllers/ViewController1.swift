//
//  ViewController1.swift
//  EGR Example
//
//  Created by Mina Yousry on 14/09/2025.
//

import UIKit

class ViewController1: UIViewController {

    var router: (any VC1RouterProtocol)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ViewController 1"
    }
    
    @IBAction func gotoVC2(_ sender: Any) {
        router?.navigate(to: .vc2)
    }
    
    @IBAction func gotoVC3(_ sender: Any) {
        router?.navigate(to: .vc3)
    }
    
}
