//
//  UIView+Extension.swift
//  Shoaib
//
//  Created by Shoaib Sarwar Cheema on 25/02/2016.
//  Copyright © 2016. All rights reserved.
//

import UIKit

@IBDesignable extension UIView {
    
    @IBInspectable var borderColor:UIColor? {
        set {
            layer.borderColor = newValue!.cgColor
        }
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor:color)
            }
            else {
                return nil
            }
        }
    }
    @IBInspectable var borderWidth:CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadius:CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }
    @IBInspectable var padding:CGFloat {
        
        set {
            self.bounds = self.frame.insetBy(dx: padding, dy: padding);
        }
        get {
            return self.bounds.origin.x
        }
    }
    
    class func loadFromNibNamed(_ nibNamed: String, bundle : Bundle? = nil,owner: AnyObject) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiate(withOwner: owner, options: nil)[0] as? UIView
    }
    
    func addBorder(_ edge: UIRectEdge, color: UIColor, thickness: CGFloat) {
        self.layer.addBorder(edge, color: color, thickness: thickness)
    }
}
