//
//  ViewController.swift
//  hour-calculator
//
//  Created by Claudia Maciel on 1/3/21.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet var WageTextField: CurrencyTextField!
    @IBOutlet var ItemCostTextField: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9254901961, blue: 0.5411764706, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 0.3293018198, green: 0.3316497865, blue: 0.3386936865, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        WageTextField.inputAccessoryView = calcBtn
        ItemCostTextField.inputAccessoryView = calcBtn
    }

    @objc func calculate() {
        print("Button pressed")
        
    }

}

