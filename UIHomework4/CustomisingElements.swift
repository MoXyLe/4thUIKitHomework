//
//  CustomisingElements.swift
//  UIHomework4
//
//  Created by Виктор on 07.08.17.
//  Copyright © 2017 Виктор. All rights reserved.
//

import UIKit

func customiseLabel(label: UILabel, x: Int, y: Int, text: String) {
    
    let vc = UIViewController()
    
    label.backgroundColor = UIColor.lightGray.withAlphaComponent(0.80)
    label.frame = CGRect(x: x, y: y, width: Int(vc.view.center.x + 20), height: Int(vc.view.bounds.height / 5) + 15)
    label.numberOfLines = 6
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 20)
    label.adjustsFontSizeToFitWidth = true
    label.text = text
    
}

func customiseSwitch(UIswitch: UISwitch, x: Int, y: Int) {
    
    UIswitch.frame = CGRect(x: x, y: y, width: 0, height: 0)
    UIswitch.tintColor = UIColor.red
    UIswitch.onTintColor = UIColor.blue
    
}
