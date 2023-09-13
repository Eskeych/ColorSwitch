//
//  ViewController.swift
//  ColorSwitch
//
//  Created by Сергей Душка on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!
    @IBOutlet var greenSwitch: UISwitch!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func redSwitchShift(_ sender: Any) {
        if !redSwitch.isOn{
            redSlider.value = 0;
        }
    }
    
    @IBAction func redSliderShift(_ sender: Any) {
        if redSwitch.isOn{
            sliderChange()
            redLabel.text = String(redSlider.value)
        }
    }
    
    @IBAction func greenSliderShift(_ sender: Any) {
        if greenSwitch.isOn{
            sliderChange()
        }
    }
    
    @IBAction func blueSliderShift(_ sender: Any) {
        if blueSwitch.isOn{
            sliderChange()
        }
    }
 
    func sliderChange(){
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value  / 255),
            green: CGFloat(greenSlider.value / 255),
            blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
}

