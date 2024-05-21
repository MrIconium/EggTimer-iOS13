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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eggTimer.progress = 0
    }
    
    @IBAction func eggSelected(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            
            switch buttonTitle {
            case "Soft":
                print("Soft is selected")
                eggTimer.progress = 0.3
            case "Medium":
                print("Medium is selected")
                eggTimer.progress = 0.6
            case "Hard":
                print("Hard is selected")
                eggTimer.progress = 0.9
            default:
                print("This shouldn't happen")
            }
        }
       
    }
}
