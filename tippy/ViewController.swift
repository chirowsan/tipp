//
//  ViewController.swift
//  tippy
//
//  Created by Anh Hoang on 12/29/16.
//  Copyright © 2016 Anh Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipSelect: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    @IBAction func calculate(_ sender: AnyObject) {
    let tipPercentages = [0.18 , 0.2 , 0.25 ]
    let bill = Double(billField.text!) ?? 0
    let tip = bill * tipPercentages[tipSelect.selectedSegmentIndex]
    let total = bill + tip
        
    tipLabel.text = String(format: "$%.2f", tip)
    totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

