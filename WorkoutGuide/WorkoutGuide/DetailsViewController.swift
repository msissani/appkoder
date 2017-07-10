//
//  DetailsViewController.swift
//  WorkoutGuide
//
//  Created by MacBook on 08/07/2017.
//  Copyright © 2017 Appy. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(detailsArray)
        appDelegate.printValue()

        self.title = detailsArray[0]

        
        self.view.backgroundColor = appColor
        
        let imgView = view.viewWithTag(6) as! UIImageView
        let workoutImage = UIImage(named: detailsArray[0])
        imgView.image = workoutImage
        
        imgView.layer.borderWidth = 4
        imgView.layer.borderColor = appColor.cgColor
        
        let descTextView = view.viewWithTag(7) as! UITextView
        descTextView.text = detailsArray[1]
        
        let closeButton = view.viewWithTag(5) as! UIButton
        closeButton.setTitleColor(UIColor.white, for: .normal)
        
    }

 

}
