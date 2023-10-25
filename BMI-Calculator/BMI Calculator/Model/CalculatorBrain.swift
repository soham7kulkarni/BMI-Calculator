//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by csuftitan on 10/24/23.
//  Copyright © 2023 soham. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI (height: Float, weight: Float){
        let bmiValue =  weight/pow(height,2)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Go, get some M&M", color: UIColor.init(red: 71/255, green: 178/255, blue: 243/255, alpha: 0.85) )
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "You are in great shape", color: UIColor.init(displayP3Red: 98/255, green: 238/255, blue: 46/255, alpha: 0.63) )
        } else {
            bmi = BMI(value: bmiValue, advice: "Time to hit the gym", color: UIColor.init(red: 240/255, green: 77/255, blue: 161/255, alpha: 0.63) )
        }
    }
    
    func getBMIValue() -> String{
        //Optional Chaining and Nil Coalescing Operator
        let bmiValue = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiValue
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "You are all good"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
}
