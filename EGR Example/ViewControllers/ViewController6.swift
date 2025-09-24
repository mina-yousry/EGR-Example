//
//  ViewController6.swift
//  EGR Example
//
//  Created by Mina Yousry on 14/09/2025.
//

import UIKit

class ViewController6: UIViewController {

    var router: VC6Router?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ViewController 6"
    }
    
    @IBAction func gotoVC4(_ sender: Any) {
        router?.goToViewController4()
    }
}
