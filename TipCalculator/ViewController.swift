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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

