//
//  CustomButton.swift
//  WorkoutGuide
//
//  Created by MacBook on 08/07/2017.
//  Copyright © 2017 Appy. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = appColor
        self.setTitleColor(UIColor.white, for: .normal)
        self.titleLabel?.font = UIFont(name: descFont, size: 20)
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
}
