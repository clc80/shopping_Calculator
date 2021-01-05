//
//  CurrencyTextField.swift
//  hour-calculator
//
//  Created by Claudia Maciel on 1/3/21.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    var grayTextColor = #colorLiteral(red: 0.3293018198, green: 0.3316497865, blue: 0.3386936865, alpha: 1)
    
    override func prepareForInterfaceBuilder() {
        customizeTextField()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTextField()
    }
    
    func customizeTextField() {
        backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9254901961, blue: 0.5490196347, alpha: 0.75)
        layer.cornerRadius = 10.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: grayTextColor])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.3293018198, green: 0.3316497865, blue: 0.3386936865, alpha: 1)
        }
    }

}
