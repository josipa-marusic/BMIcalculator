//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var selectedHeightValue: UILabel!
    @IBOutlet weak var selectedWeightValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSelection(_ sender: UISlider) {
        selectedHeightValue.text =  "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSelection(_ sender: UISlider) {
        selectedWeightValue.text = "\(String(format: "%.1f", sender.value))Kg" //String(round(sender.value * 10) / 10))
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        self.present(secondVC, animated: true, completion: nil)
    }
}

