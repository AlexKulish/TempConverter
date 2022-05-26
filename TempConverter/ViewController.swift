//
//  ViewController.swift
//  TempConverter
//
//  Created by Alex Kulish on 25.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
            slider.minimumTrackTintColor = .yellow
            slider.thumbTintColor = .orange
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let celsiusTemperature = Int(round(sender.value))
        celciusLabel.text = "\(celsiusTemperature)ºC"
        let farenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        farenheitLabel.text = "\(farenheitTemperature)ºF"
    }
    
}

