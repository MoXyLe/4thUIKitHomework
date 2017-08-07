//
//  OOOViewController.swift
//  UIHomework4
//
//  Created by Виктор on 07.08.17.
//  Copyright © 2017 Виктор. All rights reserved.
//

import UIKit

class OOOViewController: UIViewController {

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
    
    // Не советую сюда заходить, опасно
    
    override func viewWillLayoutSubviews() {
        let xSwitchPosition = Int(self.view.center.x + 30 + (self.view.center.x - 81) / 2)
        image.frame = self.view.frame
        customiseLabel(label: firstLabel, x: 10, y: Int(self.view.center.y) / 4, text: "Подготовка и подача документов на регистрацию лично заявителем")
        customiseSwitch(UIswitch: firstSwitch, x: xSwitchPosition , y: 55 + Int(firstLabel.bounds.height) / 2)
        firstSwitch.addTarget(self, action: #selector(firstSelector(_:)), for: .valueChanged)
        firstSwitch.setOn(true, animated: false)
        customiseLabel(label: secondLabel, x: 10, y: Int(firstLabel.bounds.height) + Int(self.view.center.y) / 4 + 20, text: "Самостоятельная подготовка документов и направление почтой или через представителя")
        customiseSwitch(UIswitch: secondSwitch, x: xSwitchPosition, y: 75 + Int(firstLabel.bounds.height) * 3 / 2)
        secondSwitch.addTarget(self, action: #selector(secondSelector(_:)), for: .valueChanged)
        customiseLabel(label: thirdLabel, x: 10, y: Int(secondLabel.bounds.height) + Int(firstLabel.bounds.height) + Int(self.view.center.y) / 4 + 40, text: "Подготовка и подача на регистрацию специализированной фирмой")
        customiseSwitch(UIswitch: thirdSwitch, x: xSwitchPosition, y: 95 + Int(firstLabel.bounds.height) * 5 / 2)
        thirdSwitch.addTarget(self, action: #selector(thirdSelector(_:)), for: .valueChanged)
        priceLabel.backgroundColor = UIColor.lightGray.withAlphaComponent(0.80)
        priceLabel.frame = CGRect(x: 10, y: Int(thirdLabel.bounds.height + secondLabel.bounds.height + firstLabel.bounds.height) + Int(self.view.center.y) / 4 + 60, width: (Int(self.view.center.x) * 2) - 20, height: 40)
        priceLabel.text = "     Стоимость: 4000 рублей"
        self.view.addSubview(image)
        self.view.addSubview(firstSwitch)
        self.view.addSubview(firstLabel)
        self.view.addSubview(secondLabel)
        self.view.addSubview(secondSwitch)
        self.view.addSubview(thirdLabel)
        self.view.addSubview(thirdSwitch)
        self.view.addSubview(priceLabel)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func firstSelector(_ selfSwitch: UISwitch) {
        if selfSwitch.isOn {
            secondSwitch.setOn(false, animated: true)
            thirdSwitch.setOn(false, animated: true)
            priceLabel.text = "     Стоимость: 4000 Рублей"
        }
        if !selfSwitch.isOn && !secondSwitch.isOn && !thirdSwitch.isOn{
            priceLabel.text = ""
        }
    }
    
    func secondSelector(_ selfSwitch: UISwitch) {
        if selfSwitch.isOn {
            firstSwitch.setOn(false, animated: true)
            thirdSwitch.setOn(false, animated: true)
            priceLabel.text = "     Стоимость: 7700 Рублей"
        }
        if !selfSwitch.isOn && !firstSwitch.isOn && !thirdSwitch.isOn{
            priceLabel.text = ""
        }
    }
    
    func thirdSelector(_ selfSwitch: UISwitch) {
        if selfSwitch.isOn {
            secondSwitch.setOn(false, animated: true)
            firstSwitch.setOn(false, animated: true)
            priceLabel.text = "     Стоимость: 9900 Рублей"
        }
        if !selfSwitch.isOn && !secondSwitch.isOn && !firstSwitch.isOn{
            priceLabel.text = ""
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
