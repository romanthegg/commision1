//
//  ViewController.swift
//  commision1
//
//  Created by user182426 on 11/19/20.
//  Copyright © 2020 user182426. All rights reserved.
//
//this is a comment
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var commissionPayTextField: UITextField!
    @IBOutlet weak var totalPayLabel: UILabel!
    
    let basePay = 500
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: Any) {
        let commissionPayString = commissionPayTextField.text!
        let commissionPay = Double(commissionPayString)!
        
        let totalPay = Double(basePay) + commissionPay
        
        totalPayLabel.text = "\(totalPay)"
        
          let totalOutput = String(format: "%.2f", totalPay)
        
        totalPayLabel.text = "$\(totalOutput)"
    }
    
}

