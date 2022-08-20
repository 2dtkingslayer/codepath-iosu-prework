//
//  CreationViewController.swift
//  Prework
//
//  Created by Đặng Đức Trường on 7/17/22.
//
import Foundation
import UIKit

class CreationViewController: UIViewController {
    var homeController: ViewController!
    
    @IBOutlet weak var tip1TextView: UITextView!
    @IBOutlet weak var tip2TextView: UITextView!
    @IBOutlet weak var tip3TextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        if UserDefaults.standard.value(forKey: "tip1") != nil {
            tip1TextView.text = (UserDefaults.standard.value(forKey: "tip1") as! String)
        }
        if UserDefaults.standard.value(forKey: "tip2") != nil {
            tip2TextView.text = (UserDefaults.standard.value(forKey: "tip2") as! String)
        }
        if UserDefaults.standard.value(forKey: "tip3") != nil {
            tip3TextView.text = (UserDefaults.standard.value(forKey: "tip3") as! String)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func didTapOnSave(_ sender: Any) {
        UserDefaults.standard.set(tip1TextView.text, forKey: "tip1") // Text View --> String
        UserDefaults.standard.set(tip2TextView.text, forKey: "tip2")
        UserDefaults.standard.set(tip3TextView.text, forKey: "tip3")
        
        homeController.tipControl.removeSegment(at: 0, animated: true)
        homeController.tipControl.insertSegment(withTitle: UserDefaults.standard.value(forKey: "tip1") as? String, at: 0, animated: true)
        let tip1 = UserDefaults.standard.value(forKey: "tip1") as! String
        homeController.tipPercentages[0] = (tip1 as NSString).doubleValue / 100
        
        homeController.tipControl.removeSegment(at: 1, animated: true)
        homeController.tipControl.insertSegment(withTitle: UserDefaults.standard.value(forKey: "tip2") as? String, at: 1, animated: true)
        let tip2 = UserDefaults.standard.value(forKey: "tip2") as! String
        homeController.tipPercentages[1] = (tip2 as NSString).doubleValue / 100
        
        homeController.tipControl.removeSegment(at: 2, animated: true)
        homeController.tipControl.insertSegment(withTitle: UserDefaults.standard.value(forKey: "tip3") as? String, at: 2, animated: true)
        let tip3 = UserDefaults.standard.value(forKey: "tip3") as! String
        homeController.tipPercentages[2] = (tip3 as NSString).doubleValue / 100
        
        dismiss(animated: true)
    }
}
    

