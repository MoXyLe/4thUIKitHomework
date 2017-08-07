//
//  IPViewController.swift
//  UIHomework4
//
//  Created by Виктор on 02.08.17.
//  Copyright © 2017 Виктор. All rights reserved.
//

import UIKit

class IPViewController: UIViewController {

    let image = UIImageView(image: #imageLiteral(resourceName: "BusinessImage"))
    let firstSwitch = UISwitch()
    let firstLabel = UILabel()
    let secondLabel = UILabel()
    let secondSwitch = UISwitch()
    let thirdLabel = UILabel()
    let thirdSwitch = UISwitch()
    let priceLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        
        // Common x position switch
        let xSwitchPosition = Int(self.view.center.x + 30 + (self.view.center.x - 81) / 2)
        
        image.frame = self.view.frame   //Positioning image on the screen
        
        customiseLabel(label: firstLabel, x: 10, y: Int(self.view.center.y) / 4, text: "Подготовка и подача документов на регистрацию лично заявителем")
        // Positioning and changing firstLabel
        
        customiseSwitch(UIswitch: firstSwitch, x: xSwitchPosition , y: 55 + Int(firstLabel.bounds.height) / 2)
        // Positioning and changing firstSwitch
        
        // Setting off other switches and sending text to the priceLabel, when turning on
        firstSwitch.addTarget(self, action: #selector(firstSelector(_:)), for: .valueChanged)
        
        firstSwitch.setOn(true, animated: false)    // Turning switch on
        
        customiseLabel(label: secondLabel, x: 10, y: Int(firstLabel.bounds.height) + Int(self.view.center.y) / 4 + 20, text: "Самостоятельная подготовка документов и направление почтой или через представителя")
        
        customiseSwitch(UIswitch: secondSwitch, x: xSwitchPosition, y: 75 + Int(firstLabel.bounds.height) * 3 / 2)
        
        secondSwitch.addTarget(self, action: #selector(secondSelector(_:)), for: .valueChanged)
        
        customiseLabel(label: thirdLabel, x: 10, y: Int(secondLabel.bounds.height) + Int(firstLabel.bounds.height) + Int(self.view.center.y) / 4 + 40, text: "Подготовка и подача на регистрацию специализированной фирмой")
        
        customiseSwitch(UIswitch: thirdSwitch, x: xSwitchPosition, y: 95 + Int(firstLabel.bounds.height) * 5 / 2)
        
        thirdSwitch.addTarget(self, action: #selector(thirdSelector(_:)), for: .valueChanged)
        
        priceLabel.backgroundColor = UIColor.lightGray.withAlphaComponent(0.80)
        
        priceLabel.frame = CGRect(x: 10, y: Int(thirdLabel.bounds.height + secondLabel.bounds.height + firstLabel.bounds.height) + Int(self.view.center.y) / 4 + 60, width: (Int(self.view.center.x) * 2) - 20, height: 40)
        
        priceLabel.text = "     Стоимость: 800 рублей"
        
        self.view.addSubview(image)
        self.view.addSubview(firstSwitch)
        self.view.addSubview(firstLabel)
        self.view.addSubview(secondLabel)
        self.view.addSubview(secondSwitch)
        self.view.addSubview(thirdLabel)
        self.view.addSubview(thirdSwitch)
        self.view.addSubview(priceLabel)
        
    }
    
    // Setting off other switches and sending text to the priceLabel, when turning on
    func firstSelector(_ selfSwitch: UISwitch) {
        
        if selfSwitch.isOn {
            
            secondSwitch.setOn(false, animated: true)
            thirdSwitch.setOn(false, animated: true)
            priceLabel.text = "     Стоимость: 800 Рублей"
            
        }
        
        if !selfSwitch.isOn && !secondSwitch.isOn && !thirdSwitch.isOn{
            
            priceLabel.text = ""
            
        }
        
    }
    
    // Setting off other switches and sending text to the priceLabel, when turning on
    func secondSelector(_ selfSwitch: UISwitch) {
        
        if selfSwitch.isOn {
            
            firstSwitch.setOn(false, animated: true)
            thirdSwitch.setOn(false, animated: true)
            priceLabel.text = "     Стоимость: 4500 Рублей"
        }
        
        if !selfSwitch.isOn && !firstSwitch.isOn && !thirdSwitch.isOn{
            
            priceLabel.text = ""
            
        }
        
    }
    
    // Setting off other switches and sending text to the priceLabel, when turning on
    func thirdSelector(_ selfSwitch: UISwitch) {
        
        if selfSwitch.isOn {
            
            secondSwitch.setOn(false, animated: true)
            firstSwitch.setOn(false, animated: true)
            priceLabel.text = "     Стоимость: 7500 Рублей"
            
        }
        
        if !selfSwitch.isOn && !secondSwitch.isOn && !firstSwitch.isOn {
            
            priceLabel.text = ""
            
        }
        
    }
    
}
