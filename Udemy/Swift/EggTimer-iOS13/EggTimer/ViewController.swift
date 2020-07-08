//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timeLeft = 0
    var timer: Timer?
    var counter: Int = 0
    var player: AVAudioPlayer!
    
    
    @IBAction func hardnessSelecrted(_ sender: UIButton) {
        let hardness = eggTimes[sender.currentTitle!]!
        counter = 10/hardness
        progressBar.progress = 0
        print("\(hardness) segundos seleccionados")
        mainLabel.text = sender.currentTitle
        
        //Setting the countdown time
        timeLeft = hardness
        //Disabling any previous timers.
        timer?.invalidate()
        //Initialization of the Timer with interval every 1 second with the function call.
        timer = Timer(timeInterval: 1.0, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        //Adding Timer to the current loop
        RunLoop.current.add(timer!, forMode: .common)
    }
    
    @objc func countDown() {
        if timeLeft > 0 {
            print("\(timeLeft) seconds.")
            timeLeft -= 1
            progressBar.progress += (0.1*Float(counter))
        } else {
            playSound()
            mainLabel.text = "Done!"
            progressBar.progress = 1
            // Timer stopping
            timer?.invalidate()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
