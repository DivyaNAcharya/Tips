//
//  ViewController.swift
//  Tips
//
//  Created by Divya Acharya  on 12/20/15.
//  Copyright © 2015 Divya Acharya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    //@IBOutlet weak var billAmount: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text="$0.00"
        totalLabel.text="$0.00"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
  
        var tipPercents = [0.18, 0.20, 0.25]
        let tipPercent = tipPercents[tipControl.selectedSegmentIndex]
        
        let billAmount=(billField.text! as NSString).doubleValue
        
        let tip = billAmount * tipPercent
        let total = tip + billAmount
        tipLabel.text="$\(tip)"
        totalLabel.text="$\(total)"
        
        tipLabel.text=String(format: "$%.2f", tip)
        totalLabel.text=String(format: "$%.2f", total)
        
        
     
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

