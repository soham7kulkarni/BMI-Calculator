//
//  ViewController.swift


import UIKit

class CalculateViewController: UIViewController {

    
    var bmiValue = "0.0"
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightValue.text = "\(height)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.f", sender.value)
        weightValue.text = "\(weight)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight/pow(height,2)
//        print(bmi)
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "goToResult"{
                let destinationVC = segue.destination as! ResultViewController
                destinationVC.bmiValue = bmiValue
                
            }
        
    }
}

