//
//  ViewController.swift
//  UIHomework4
//
//  Created by Виктор on 02.08.17.
//  Copyright © 2017 Виктор. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let image = UIImageView(image: #imageLiteral(resourceName: "BusinessImage"))
    let buttonForIP = UIButton(type: .system)
    let buttonForOOO = UIButton(type: .system)
    
    override func viewWillLayoutSubviews() {
        
        image.frame = self.view.frame
        createButton(button: buttonForIP, text: "Стоимость Оформления ИП", y: 150)
        createButton(button: buttonForOOO, text: "Стоимость Оформления ООО", y: 210)
        buttonForIP.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        buttonForOOO.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        self.view.addSubview(image)
        self.view.addSubview(buttonForIP)
        self.view.addSubview(buttonForOOO)
        
    }
    
    func buttonClicked(_ sender: UIButton) {
        
        if sender.isEqual(buttonForIP) {
            
            self.performSegue(withIdentifier: "GoToIP", sender: nil)
            
        } else {
            
            self.performSegue(withIdentifier: "GoToOOO", sender: nil)
            
        }
        
    }
    
    func createButton(button: UIButton, text: String, y: CGFloat) {
        
        button.backgroundColor = UIColor.lightGray.withAlphaComponent(0.80)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.textAlignment = .center
        button.tintColor = UIColor.black
        button.setTitle(text, for: .normal)
        button.frame = CGRect(x: 40, y: y, width: self.view.frame.width - 80, height: 40)
        
    }
    
}
