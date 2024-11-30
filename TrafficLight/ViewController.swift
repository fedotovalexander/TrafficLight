//
//  ViewController.swift
//  TrafficLight
//
//  Created by Alexander Fedotov on 28.11.2024.
//

import UIKit

var trafficLightState = 0

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
        greenLightView.alpha = 0.3
        changeButton.layer.cornerRadius = 10
        changeButton.backgroundColor = .blue
    }

    @IBAction func changeLightButtonTapped(_ sender: UIButton) {
                        
        switch trafficLightState {
        case 0:
            redLightView.alpha = 1
                greenLightView.alpha = 0.3
                yellowLightView.alpha = 0.3
                sender.setTitle("Next", for: .normal)
        case 1:
            yellowLightView.alpha = 1
                greenLightView.alpha = 0.3
                redLightView.alpha = 0.3

            sender.setTitle("Next", for: .normal)
        case 2:
                greenLightView.alpha = 1
                yellowLightView.alpha = 0.3
                redLightView.alpha = 0.3
                sender.setTitle("Next", for: .normal)
        default:
                greenLightView.alpha = 0.3
                yellowLightView.alpha = 0.3
                redLightView.alpha = 0.3
                sender.setTitle("Start", for: .normal)
        }
        
        trafficLightState =  (trafficLightState + 1 ) % 4

    }
    
}

