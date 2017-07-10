//
//  MoreWorkoutsViewController.swift
//  WorkoutGuide
//
//  Created by MacBook on 09/07/2017.
//  Copyright © 2017 Appy. All rights reserved.
//

import UIKit

class MoreWorkoutsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "More Workout"

  //      print(appDelegate.getPlistDictionnary(namePlist: "Workouts"))
        let dict = appDelegate.getPlistDictionnary(namePlist: "Workouts")
 
        let button = appDelegate.setButtonList(dict: dict!, view: self.view)
        
        button.addTarget(self, action:#selector(MoreWorkoutsViewController.goToDetails(sender:)), for: .touchUpInside)

        /*
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
                    
                    button.addTarget(self, action: #selector(MoreWorkoutsViewController.goToDetails(sender:)), for: .touchUpInside)
                }
            }
        }
        
    */
    }
    
    func goToDetails(sender: UIButton)
    {
        print("Im in more workout details")
        if let title = sender.titleLabel?.text, let array = workoutDict[title]
        {
            detailsArray = array
            performSegue(withIdentifier:"more", sender: self)
        }
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
    
    }
}
