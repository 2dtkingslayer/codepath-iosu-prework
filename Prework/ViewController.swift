//
//  ViewController.swift
//  Prework
//
//  Created by Đặng Đức Trường on 7/12/22.
//

import UIKit

class ViewController: UIViewController {
    var each: Double = 0.0
    var amount_value: Double = 0.0
    var amount_string: String = ""
    var tipPercentages = [0.15, 0.18, 0.20]
    
    @IBOutlet weak var billAmountTextView: UITextView!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBOutlet weak var perPeopleLabel: UILabel!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBOutlet weak var Tap0_Deco: UIButton!
    @IBOutlet weak var Tap1_Deco: UIButton!
    @IBOutlet weak var Tap2_Deco: UIButton!
    @IBOutlet weak var Tap3_Deco: UIButton!
    @IBOutlet weak var Tap4_Deco: UIButton!
    @IBOutlet weak var Tap5_Deco: UIButton!
    @IBOutlet weak var Tap6_Deco: UIButton!
    @IBOutlet weak var Tap7_Deco: UIButton!
    @IBOutlet weak var Tap8_Deco: UIButton!
    @IBOutlet weak var Tap9_Deco: UIButton!
    @IBOutlet weak var TapDOT_Deco: UIButton!
    @IBOutlet weak var TapDEL_Deco: UIButton!
    
    @objc func calculate() -> Void {
        let bill = amount_value
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perPeopleLabel.text = String(format: "$%.2f", total / peopleStepper.value) + " per person" // lam tron
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        peopleStepper.minimumValue = 1
        peopleStepper.value = 1
        
        Tap0_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap0_Deco.layer.borderWidth = 0.5
        Tap1_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap1_Deco.layer.borderWidth = 0.5
        Tap2_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap2_Deco.layer.borderWidth = 0.5
        Tap3_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap3_Deco.layer.borderWidth = 0.5
        Tap4_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap4_Deco.layer.borderWidth = 0.5
        Tap5_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap5_Deco.layer.borderWidth = 0.5
        Tap6_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap6_Deco.layer.borderWidth = 0.5
        Tap7_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap7_Deco.layer.borderWidth = 0.5
        Tap8_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap8_Deco.layer.borderWidth = 0.5
        Tap9_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        Tap9_Deco.layer.borderWidth = 0.5
        TapDOT_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        TapDOT_Deco.layer.borderWidth = 0.5
        TapDEL_Deco.layer.borderColor = CGColor(red: 0xff/255, green: 0x95/255, blue: 0x00/255, alpha: 1.0)
        TapDEL_Deco.layer.borderWidth = 0.5
    }

    @IBAction func calculateTip(_ sender: Any) {
        calculate()
    }
    
    @IBAction func countPeople(_ sender: UIStepper) {
        partySizeLabel.text = String(Int(sender.value))
        calculate()
    }
    
    @IBAction func Tap0(_ sender: Any) {
        if (amount_string.count > 0) {
            amount_string += "0"
            let temp = Double(amount_string)
            amount_value = temp!
            billAmountTextView.text += "0"
            calculate()
        }
    }
    
    @IBAction func Tap1(_ sender: Any) {
        amount_string += "1"
        let temp = Double(amount_string)
        amount_value = temp!
        billAmountTextView.text += "1"
        calculate()
    }
    
    @IBAction func Tap2(_ sender: Any) {
        amount_string += "2"
        let temp = Double(amount_string)
        amount_value = temp!
        billAmountTextView.text += "2"
        calculate()
    }
    
    @IBAction func Tap3(_ sender: Any) {
        amount_string += "3"
        let temp = Double(amount_string)
        amount_value = temp!
        billAmountTextView.text += "3"
        calculate()
    }
    
    @IBAction func Tap4(_ sender: Any) {
        amount_string += "4"
        let temp = Double(amount_string)
        amount_value = temp!
        billAmountTextView.text += "4"
        calculate()
    }
    
    @IBAction func Tap5(_ sender: Any) {
        amount_string += "5"
        let temp = Double(amount_string)
        amount_value = temp!
        billAmountTextView.text += "5"
        calculate()
    }
    
    @IBAction func Tap6(_ sender: Any) {
        amount_string += "6"
        let temp = Double(amount_string)
        amount_value = temp!
        billAmountTextView.text += "6"
        calculate()
    }
    
    @IBAction func Tap7(_ sender: Any) {
        amount_string += "7"
        let temp = Double(amount_string)
        amount_value = temp!
        billAmountTextView.text += "7"
        calculate()
    }
    
    @IBAction func Tap8(_ sender: Any) {
        amount_string += "8"
        let temp = Double(amount_string)
        amount_value = temp!
        billAmountTextView.text += "8"
        calculate()
    }
    
    @IBAction func Tap9(_ sender: Any) {
        amount_string += "9"
        let temp = Double(amount_string)
        amount_value = temp!
        billAmountTextView.text += "9"
        calculate()
    }
    
    @IBAction func TapDot(_ sender: Any) {
        amount_string += "."
        billAmountTextView.text += "."
    }
    
    @IBAction func TapDel(_ sender: Any) {
        if (billAmountTextView.text != "$") {
            amount_string.removeLast()
            if amount_string.count == 0 {
                amount_value = 0
            } else {
                let temp = Double(amount_string)
                amount_value = temp!
            }
            billAmountTextView.text.removeLast()
            calculate()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.homeController = self
    }
    
}

