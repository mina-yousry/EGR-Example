//
//  ViewController1.swift
//  EGR Example
//
//  Created by Mina Yousry on 14/09/2025.
//

import UIKit

class ViewController1: UIViewController {

    var router: VC1Router?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ViewController 1"
    }
    
    @IBAction func gotoVC2(_ sender: Any) {
        router?.goToViewController2()
    }
    
    @IBAction func gotoVC3(_ sender: Any) {
        router?.goToViewController3()
    }
    
}
