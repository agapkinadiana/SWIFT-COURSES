//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Diana Agapkina on 8/4/20.
//  Copyright © 2020 Diana Agapkina. All rights reserved.
//

import Foundation

struct CalculatorBrain {

    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi!)
        return bmiValue
    }
}
