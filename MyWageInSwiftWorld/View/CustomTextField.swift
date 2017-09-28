//
//  CustomTextField.swift
//  MyWageInSwiftWorld
//
//  Created by Вячеслав Горлов on 28.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {

    func updateView() {
        self.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 1, alpha: 0.25)
        self.layer.cornerRadius = 5.0
        self.textAlignment = .center
        self.clipsToBounds = true
        if let placeholderText = self.placeholder {
            self.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            self.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.updateView()
    }
    
    override func prepareForInterfaceBuilder() {
        self.updateView()
    }
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20.0
        let currencySignLabel = UILabel(frame: CGRect(x: 5, y: (self.frame.height - size) / 2, width: size, height: size))
        currencySignLabel.backgroundColor = #colorLiteral(red: 0.8823529412, green: 0.8823529412, blue: 0.8823529412, alpha: 0.8)
        currencySignLabel.textAlignment = .center
        currencySignLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencySignLabel.layer.cornerRadius = 5.0
        currencySignLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencySignLabel.text = formatter.currencySymbol
        self.addSubview(currencySignLabel)
    }


}
