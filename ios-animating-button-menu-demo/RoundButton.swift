//
//  RoundButton.swift
//  ios-animating-button-menu-demo
//
//  Created by Kushida　Eiji on 2017/05/14.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {

        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {

        didSet {
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.clear {

        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
