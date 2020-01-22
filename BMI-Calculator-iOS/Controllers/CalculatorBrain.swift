//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Baksa, Bridget Marie on 1/2/20.
//  Copyright ©2020 Baksa, Bridget Marie. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = ((weight/(pow(height, 2)))*703)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You are Underweight. Eat a little more!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are a Healthy Weight! Yay!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else if bmiValue <= 29.9 {
            bmi = BMI(value: bmiValue, advice: "You are Overweight. Eat a little less!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "You are Obese. Stop eating so much!", color: #colorLiteral(red: 0.6206908822, green: 0.1182372943, blue: 0.1212501749, alpha: 1))
        }
        
        //bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    func getBMIValue() -> String {
        // Checks to see if the bmi is nil
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
}
