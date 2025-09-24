//
//  AppRouter.swift
//  EGR Example
//
//  Created by Mina Yousry on 15/09/2025.
//

import Foundation
import UIKit

struct AppRouter {
    func startApp(scene: UIScene) -> UIWindow? {
        let vc1Router = VC1Router()
        return vc1Router.start(scene: scene)
    }
}
