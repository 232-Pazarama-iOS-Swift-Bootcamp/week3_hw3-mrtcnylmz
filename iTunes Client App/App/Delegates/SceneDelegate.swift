//
//  SceneDelegate.swift
//  iTunes Client App
//
//  Created by Pazarama iOS Bootcamp on 1.10.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        setupWindow(with: windowScene)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


    private func setupWindow(with windowScene: UIWindowScene) {
        let window = UIWindow(windowScene: windowScene)
        
        let viewController = MainViewController()
        let moviesController = MoviesViewController()
        let musicController = MusicViewController()
        let softwareController = SoftwareViewController()
        let ebookController = EbookViewController()
        let favoritesController = FavoritesViewController()
        
        viewController.tabBarItem = UITabBarItem(title: "Podcasts", image: UIImage(systemName: "mic"),selectedImage: UIImage(systemName: "mic.fill"))
        moviesController.tabBarItem = UITabBarItem(title: "Movies", image: UIImage(systemName: "film"), selectedImage: UIImage(systemName: "film.fill"))
        musicController.tabBarItem = UITabBarItem(title: "Music", image: UIImage(systemName: "music.note.tv"), selectedImage: UIImage(systemName: "music.note.tv.fill"))
        softwareController.tabBarItem = UITabBarItem(title: "Software", image: UIImage(systemName: "compass.drawing"), selectedImage: UIImage(systemName: "compass.drawing"))
        ebookController.tabBarItem = UITabBarItem(title: "eBook", image: UIImage(systemName: "text.book.closed"), selectedImage: UIImage(systemName: "text.book.closed.fill"))
        favoritesController.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "star"), selectedImage: UIImage(systemName: "star.fill"))
        
        let navigationController = UINavigationController(rootViewController: viewController)
        let moviesNavigationController = UINavigationController(rootViewController: moviesController)
        let musicNavigationController = UINavigationController(rootViewController: musicController)
        let softwareNavigationController = UINavigationController(rootViewController: softwareController)
        let ebookNavigationController = UINavigationController(rootViewController: ebookController)
        let favoritesNavigationController = UINavigationController(rootViewController: favoritesController)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationController, moviesNavigationController, musicNavigationController, softwareNavigationController, ebookNavigationController,favoritesNavigationController]
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        self.window = window
    }
}

