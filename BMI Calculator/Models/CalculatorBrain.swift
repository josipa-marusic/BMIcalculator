//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Josipa Nemčić on 03.02.2023..
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiValue = "0.0"
    
    mutating func calculateBmi(height: Float, weight: Float) {
        bmiValue = String(format: "%.1f", weight / pow(height, 2))
    }
}
