//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Shawn Williams on 9/25/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet var resultsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = self.bmiValue
        adviceLabel.text = self.advice
        resultsView.backgroundColor = self.color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
