//
//  ViewController2.swift
//  EGR Example
//
//  Created by Mina Yousry on 14/09/2025.
//

import UIKit

class ViewController2: UIViewController {

    var router: AppRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ViewController 2"
    }
    
    @IBAction func gotoVC4(_ sender: Any) {
        router?.goToViewController4(viewController: self)
    }
    
    @IBAction func gotoVC5(_ sender: Any) {
        router?.goToViewController5(viewController: self)
    }
}
