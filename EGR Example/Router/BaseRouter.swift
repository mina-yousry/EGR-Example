//
//  BaseRouter.swift
//  EGR Example
//
//  Created by Mina Yousry on 24/09/2025.
//

import Foundation
import UIKit

protocol AppRouterProtocol {
    associatedtype Routes
    
    var currentVC: UIViewController? {get}
    
    func navigate(to route: Routes)
}

protocol VCBaseRouterProtocol: AppRouterProtocol {
    func start(vc: UIViewController)
}

extension VCBaseRouterProtocol {
    
    func navigate(to route: Routes) {}
    
    func start(vc: UIViewController) {}
    
}
