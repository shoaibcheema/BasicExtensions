//
//  UITextField+Extension.swift
//  Shoaib
//
//  Created by Shoaib Sarwar Cheema on 18/07/2017.
//  Copyright © 2017. All rights reserved.
//

import UIKit

extension UITextField {
    @IBInspectable var placeholderColor: UIColor {
        get {
            guard let currentAttributedPlaceholderColor = attributedPlaceholder?.attribute(NSForegroundColorAttributeName, at: 0, effectiveRange: nil) as? UIColor else { return UIColor.clear }
            return currentAttributedPlaceholderColor
        }
        set {
            guard let currentAttributedString = attributedPlaceholder else { return }
            let attributes = [NSForegroundColorAttributeName : newValue]
            
            attributedPlaceholder = NSAttributedString(string: currentAttributedString.string, attributes: attributes)
        }
    }
}

class LinedTextField: UITextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        
    }
    
    func setupView(){
        
        borderStyle = .none
        addBorder(.bottom, color: .white, thickness: 1)
        placeholderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        textColor = UIColor.white
        clipsToBounds = true
    }
}
