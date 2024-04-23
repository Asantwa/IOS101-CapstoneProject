//
//  AppDelegate.swift
//  RoutineMixer2
//
//  Created by Asa smith on 4/22/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Create the view controllers
        let createViewController = CreateViewController()
        let shuffleViewController = ShuffleViewController()
        
        // Set the titles and icons for the tab bar items
        createViewController.tabBarItem = UITabBarItem(title: "Create", image: UIImage(systemName: "plus"), selectedImage: nil)
        shuffleViewController.tabBarItem = UITabBarItem(title: "Shuffle", image: UIImage(systemName: "shuffle"), selectedImage: nil)
        
        // Create the tab bar controller and set the view controllers
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [createViewController, shuffleViewController]
        
        // Set the root view controller
       // window?.rootViewController = tabBarController
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }




}

