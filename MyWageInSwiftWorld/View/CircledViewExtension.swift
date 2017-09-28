//
//  CircledViewExtension.swift
//  MyWageInSwiftWorld
//
//  Created by Вячеслав Горлов on 28.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable public var cornerRadiusRation: CGFloat {
        get {
            return self.layer.cornerRadius / self.frame.width
        }
        set {
            self.layer.masksToBounds = true
            self.layer.cornerRadius = self.frame.width * max(0.0, min(1.0, newValue))
        }
    }
}
