//
//  UIView+Extention.swift
//  chatapp
//
//  Created by Rashid Karina on 03.05.2023.
//

import UIKit
extension UIView {
    @IBInspectable var cornerRaduis: CGFloat{
        get { return cornerRaduis }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

