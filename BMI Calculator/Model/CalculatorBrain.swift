//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Katsu on 7/28/20.
//  Copyright © 2020 Katsu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
   
    mutating func calculateBMI(height:Float , weight:Float)  {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat More pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5 ... 24.9:
             bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        default:
             bmi = BMI(value: bmiValue, advice: "Eat Less pies!", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String (format: "%.1f",bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "Well you look Fabulous"
    }
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
}
