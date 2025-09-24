//
//  ViewController2.swift
//  EGR Example
//
//  Created by Mina Yousry on 14/09/2025.
//

import UIKit

class ViewController2: UIViewController {

    var router: VC2Router?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ViewController 2"
    }
    
    @IBAction func gotoVC4(_ sender: Any) {
        router?.goToViewController4()
    }
    
    @IBAction func gotoVC5(_ sender: Any) {
        router?.goToViewController5()
    }
}
