//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shawn Williams on 9/25/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
   mutating func calculateBMI(height: Float, weight: Float)  {
        let bmiValue = weight / (height * height)
    if bmiValue < 18.5 {
        bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0, green: 0.7621700168, blue: 0.8050943017, alpha: 1))
    } else if bmiValue < 24.9 {
        bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    } else {
        bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.6637606621, green: 0, blue: 0.08376566321, alpha: 1))
    }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Its always better if you workout and eat healthy"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
    }
}
