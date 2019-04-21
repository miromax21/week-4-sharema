//
//  AppDelegate.swift
//  week-4-sharema
//
//  Created by maxim mironov on 19/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import UIKit
import WebKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "vc") as! ViewController
        let urlScheme = url.scheme
        let urlComponents = NSURLComponents(url: url, resolvingAgainstBaseURL: false)
        let items = (urlComponents?.queryItems)! as [NSURLQueryItem]
        if (urlScheme  == "ss") {
            if let _ = items.first, let propertyName = items.first?.name, let propertyValue = items.first?.value{
                vc.senderType = SenderTypeEnum(rawValue: propertyName)
                vc.text = propertyValue
            }
        }
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        return false
        
//        var a = 22
//        let rootViewController = self.window!.rootViewController
//        let main = UIStoryboard(name: "Main", bundle: nil)
//        let vc = main.instantiateViewController(withIdentifier: "vc") as! ViewController
//        vc.text = "3121231231231231231"
//        rootViewController?.present(vc, animated: true)
      //  rootViewController.pushViewController(vc, animated: true)
      //  rootViewController?.navigationController?.popToViewController(vc, animated: true)

//        let urlScheme = url.scheme //[URL_scheme]
//        let host = url.host //red
//        // When you type customSchemeExample://?backgroundColor=red or
//        //swiftexamples://?backgroundColor=green
//        let urlComponents = NSURLComponents(url: url, resolvingAgainstBaseURL: false)
//        let items = (urlComponents?.queryItems)! as [NSURLeryItem] // {name = backgroundcolor, value = red}
//        if (urlScheme  == "swiftexamples") {
//            var color: UIColor? = nil
//            var vcTitle = ""
//            if let _ = items.first, let propertyName = items.first?.name, let propertyValue = items.first?.value {
//                vcTitle = propertyName
//                if (propertyValue == "red") {
//                    color = .red
//                } else if (propertyValue == "green") {
//                    color = .green
//                }
//            }
//
//
//            if (color != nil) {
//                let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//                let vc = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//                self.window?.rootViewController = vc
//               // let vc =  ViewController()
//                vc.tittle = "eqweqeqeqweqweq"
////
////                vc.view.backgroundColor = color
////                vc.title = vcTitle
//                let navController = UINavigationController(rootViewController: vc)
//                let barButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismiss))
//                vc.navigationItem.leftBarButtonItem = barButtonItem
//                self.window?.rootViewController?.present(navController, animated: true, completion: nil)
//                return true
//            }
//        }

    }
    
    @objc func dismiss() {
        self.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }


}

