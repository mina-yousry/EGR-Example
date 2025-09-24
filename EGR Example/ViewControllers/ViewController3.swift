//
//  ViewController3.swift
//  EGR Example
//
//  Created by Mina Yousry on 14/09/2025.
//

import UIKit

class ViewController3: UIViewController {

    var router: (any VC3RouterProtocol)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ViewController 3"
    }
    
    @IBAction func gotoVC6(_ sender: Any) {
        router?.navigate(to: .vc6)
    }
}
