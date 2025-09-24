//
//  ViewController3.swift
//  EGR Example
//
//  Created by Mina Yousry on 14/09/2025.
//

import UIKit

class ViewController3: UIViewController {

    var router: VC3Router?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ViewController 3"
    }
    
    @IBAction func gotoVC6(_ sender: Any) {
        router?.goToViewController6()
    }
}
