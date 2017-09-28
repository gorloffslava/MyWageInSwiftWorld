//
//  ViewController.swift
//  MyWageInSwiftWorld
//
//  Created by Вячеслав Горлов on 28.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wageTextField: UITextField!
    @IBOutlet weak var itemPriceTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.3176470588, blue: 0.2235294118, alpha: 1)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.setTitle("Вычислить", for: .normal)
        calculateButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        self.wageTextField.inputAccessoryView = calculateButton
        self.itemPriceTextField.inputAccessoryView = calculateButton
        
        self.resultLabel.isHidden = true
        self.hoursLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearButtonPressed(_ sender: Any) {
        self.resultLabel.isHidden = true
        self.hoursLabel.isHidden = true
        self.wageTextField.text = ""
        self.itemPriceTextField.text = ""
    }
    
    @IBAction func calculate() {
        if let wageText = self.wageTextField.text, let priceText = self.itemPriceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                self.view.endEditing(true)
                self.resultLabel.isHidden = false
                self.hoursLabel.isHidden = false
                self.resultLabel.text = "\(Wage.hours(forWage: wage, withPrice: price))"
            }
        }
    }
    
}

