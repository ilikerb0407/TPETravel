/// SceneDelegate
///
/// Created by TWINB00591630 on 2024/8/3.
/// Copyright © 2024 Cathay United Bank. All rights reserved.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo _: UISceneSession, options _: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }

        window = .init(windowScene: windowScene)
        window?.rootViewController = HomeViewController()
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_: UIScene) { }

    func sceneDidBecomeActive(_: UIScene) { }

    func sceneWillResignActive(_: UIScene) { }

    func sceneWillEnterForeground(_: UIScene) { }

    func sceneDidEnterBackground(_: UIScene) { }
}