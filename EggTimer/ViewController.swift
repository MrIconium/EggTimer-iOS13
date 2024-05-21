//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    @IBOutlet weak var eggTimer: UIProgressView!
    
    var cookingTime: Float = 0.0
    let cookingTimes = ["Soft":3, "Medium":5, "Hard":7]
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eggTimer.progress = 0
        
    }
    
  
    
    @IBAction func eggSelected(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            if let timerPressed = timer {
                timerPressed.invalidate()
            }
            switch buttonTitle {
            case "Soft":
                print("Soft is selected")
                cookingTime = 3.0
            case "Medium":
                print("Medium is selected")
                cookingTime = 5.0
            case "Hard":
                print("Hard is selected")
                cookingTime = 7.0
            default:
                print("This shouldn't happen")
            }
            
            print(cookingTimes[buttonTitle]!)
            startTimer()
            eggTimer.progress = 0
        }
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter(){
        if cookingTime > 0 {
            var iterationTime = 1/cookingTime
            cookingTime -= 1
            print(cookingTime)
            eggTimer.progress += iterationTime
        } else {
            timer?.invalidate()
            eggTimer.progress = 1
        }
    }

}
