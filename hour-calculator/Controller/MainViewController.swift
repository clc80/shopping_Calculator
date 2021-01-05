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
    @IBOutlet var resultsLabel: UILabel!
    @IBOutlet var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9254901961, blue: 0.5411764706, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 0.3293018198, green: 0.3316497865, blue: 0.3386936865, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        WageTextField.inputAccessoryView = calcBtn
        ItemCostTextField.inputAccessoryView = calcBtn
        
        resultsLabel.isHidden = true
        hoursLabel.isHidden = true
    }

    @objc func calculate() {
        resultsLabel.isHidden = false
        hoursLabel.isHidden = false
        guard let wageString = WageTextField.text else { return }
        guard let costString = ItemCostTextField.text else { return }
        
        if let wage = Double(wageString), let cost = Double(costString) {
            view.endEditing(true)
            let result = Wage.getHours(forWage: wage, andPrice: cost)
            resultsLabel.text = "\(result)"
        }
        
    }
    
    @IBAction func clearCalcButtonPressed(_ sender: Any) {
        resultsLabel.isHidden = true
        hoursLabel.isHidden = true
        
        WageTextField.text = ""
        ItemCostTextField.text = ""
    }
    
}

