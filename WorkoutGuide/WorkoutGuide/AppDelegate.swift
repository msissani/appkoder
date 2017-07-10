//
//  AppDelegate.swift
//  WorkoutGuide
//
//  Created by MacBook on 08/07/2017.
//  Copyright © 2017 Appy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().barTintColor = appColor

        return true
    }
    
    func printValue(){
        print("I am in APP DELEGATE!")
    }
    
    func getPlistDictionnary(namePlist: String) -> NSDictionary? {
        var dictionary = NSDictionary()
        let path = Bundle.main.path(forResource: namePlist, ofType: "plist")
        
        if let validPath = path
        {
            
            let dict = NSDictionary(contentsOfFile: validPath)
            
            if let validDict = dict {
                 dictionary = validDict
            }
        }
        return dictionary
    }
    
    func setButtonList(dict: NSDictionary, view: UIView) -> UIButton{
        
        let titleArrays = dict.allKeys
        let allView = view.subviews
        var button = UIButton()
        
        for i in 0..<allView.count
        {
            if allView[i].tag == 10 //is UIButton
            {
                button = allView[i] as! UIButton
                button.setTitle(titleArrays[i] as? String, for: .normal)
                button.setTitleColor(UIColor.orange, for: .normal)
                button.titleLabel?.font = UIFont(name: buttonFont, size: 20)
                button.layer.borderColor = appColor.cgColor
                button.layer.borderWidth = 1.5
                button.layer.cornerRadius = 5
                button.clipsToBounds = true
                
           //     button.addTarget(self, action: #selector(appDelegate.goToDetails(sender:)), for: .touchUpInside)
            }
        }
        return button
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


}

