//
//  ViewController2.swift
//  EGR Example
//
//  Created by Mina Yousry on 14/09/2025.
//

import UIKit

class ViewController2: UIViewController {

    var router: (any VC2RouterProtocol)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ViewController 2"
    }
    
    @IBAction func gotoVC4(_ sender: Any) {
        router?.navigate(to: .vc4)
    }
    
    @IBAction func gotoVC5(_ sender: Any) {
        router?.navigate(to: .vc5)
    }
}
