//
//  ViewController.swift
//  TConverter
//
//  Created by Vitaly Khryapin on 02.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var miliLabel: UILabel!
    @IBOutlet weak var kilometrLabel: UILabel!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
    @IBAction func sliderKmAndMi(_ sender2: UISlider) {
        let distanceKilometr = Int(round(sender2.value))
        kilometrLabel.text = "\(distanceKilometr) km/h"
        let distanceMili = Int(round(sender2.value / 1.609))
        miliLabel.text = "\(distanceMili) mph"
    }
}

