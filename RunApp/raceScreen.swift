//
//  raceScreen.swift
//  RunApp
//
//  Created by Ricky Wang on 8/5/19.
//  Copyright © 2019 Michael Peng. All rights reserved.
//

import UIKit
import Firebase
import CoreLocation
import TextFieldEffects
import GTProgressBar

class raceScreen: UIViewController {
    //TODO: Timer
    var seconds:Int = 30
    var timer = Timer()
    
    @IBOutlet weak var progressBar1: GTProgressBar!
    @IBOutlet weak var progressBar2: GTProgressBar!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(raceScreen.timerCounter), userInfo: nil, repeats: true)
        timerLabel.text = String(seconds)
        
        progressBar1.isHidden = true
        progressBar2.isHidden = true
    }
    @objc func timerCounter() {
        seconds = seconds - 1
        if (seconds == 0) {
            timer.invalidate()
            //do other stuff
        }
        timerLabel.text = String(seconds)
    }
}
