//
//  WorkoutsViewController.swift
//  WorkoutGuide
//
//  Created by MacBook on 08/07/2017.
//  Copyright © 2017 Appy. All rights reserved.
//

import UIKit

var detailsArray = [String]()
var workoutDict = [String: [String]]()

class WorkoutsViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        appDelegate.printValue()

        self.title = "Choose Workout"
        let path = Bundle.main.path(forResource: "Workouts", ofType: "plist")
        
        if let validPath = path
        {
            
            let dict = NSDictionary(contentsOfFile: validPath)
            
            if let validDict = dict {
             //   print(validDict)
                
                workoutDict = validDict as! [String: [String]]
                
                let titleArrays = validDict.allKeys
                let allView = view.subviews
                
                for i in 0..<allView.count
                {
                    if allView[i].tag == 10 //is UIButton
                    {
                        let button = allView[i] as! UIButton
                        button.setTitle(titleArrays[i] as? String, for: .normal)
                        button.setTitleColor(UIColor.orange, for: .normal)
                        button.titleLabel?.font = UIFont(name: buttonFont, size: 20)
                        button.layer.borderColor = appColor.cgColor
                        button.layer.borderWidth = 1.5
                        button.layer.cornerRadius = 5
                        button.clipsToBounds = true
                        
                        button.addTarget(self, action: #selector(WorkoutsViewController.goToDetails(sender:)), for: .touchUpInside)
                    }
                }
            }
        }
        
    }
    
    func goToDetails(sender: UIButton)
    {
        if let title = sender.titleLabel?.text, let array = workoutDict[title]
        {
            detailsArray = array
            performSegue(withIdentifier: "details", sender: self)
        }
        
    }
    
    @IBAction func close(segue: UIStoryboardSegue)
    {
        
    }
}
