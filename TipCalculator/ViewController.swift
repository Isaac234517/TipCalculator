//
//  ViewController.swift
//  TipCalculator
//
//  Created by Isaac on 05/12/2015.
//  Copyright © 2015 Isaac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var taxSlider:UISlider!
    @IBOutlet weak var calculateBtn:UIButton!
    @IBOutlet weak var textView:UITextView!
    let calculator:Calculator = Calculator(BillTotal:0, TaxPercentage:0);
    
    @IBAction func calculateTax(sender:AnyObject){
//        calculator.total = Double((totalTextField.text! as NSString).doubleValue)
//        var text:String = ""
//        let results = calculator.possibileTips()
//        for (percentage,total) in results {
//            text += "percentage\(percentage): total\(total)\n"
//        }
        calculator.total=Double((totalTextField.text!as NSString).doubleValue)
        textView.text=String(format:"%f", calculator.postTax);
    }
    
    @IBAction func percentageChange(sender:AnyObject){
        calculator.taxPct=Double(taxSlider.value)
        taxLabel.text="Tax Percentage\( String(format: "%.1f",(taxSlider.value*100)))%"
    }
    
    @IBAction func ViewTapped(sender:AnyObject){
        totalTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        taxLabel.text="TaxPercentage \(String(format:"%.1f",taxSlider.value*100))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

