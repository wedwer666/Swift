//
//  ViewController.swift
//  ClockPomodoro
//
//  Created by Mitriuc Maria on 4/6/17.
//  Copyright © 2017 ClockPomodoroProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var seconds = 30
    var timer = Timer()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var stopOutlet: UIButton!
    @IBOutlet weak var labelStart: UILabel!
    @IBOutlet weak var startOutlet: UIButton!
    var tableController = myTableViewController()
    
    
    func counter()
    {
        seconds -= 1
        labelStart.text = String(seconds) + " Seconds"
        
        if (seconds == 0)
        {
            timer.invalidate()
            
            sliderOutlet.isHidden = false
            startOutlet.isHidden = false
            
            //audioPlayer.play()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ///tableController = storyboard?.instantiateViewController(withIdentifier: "testController") as! myTableViewController
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.setname(not:)), name: NSNotification.Name(rawValue: "setTaskName"), object: nil)
    }
    func setname(not:Notification)
    {
        let tmp = not.object
        nameLabel.text = tmp as! String?
        sliderOutlet.isHidden = false
        labelStart.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderAction(_ sender: UISlider)
    {
        seconds = Int(sender.value)
        labelStart.text = String(format: "%.2f", sender.value)
    }
    @IBAction func startAction(_ sender: Any)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
        
        sliderOutlet.isHidden = true
        startOutlet.isHidden = true
    }

    @IBAction func stop(_ sender: Any)
    {
        timer.invalidate()
        seconds = 30
        sliderOutlet.setValue(30, animated: true)
        labelStart.text = "30 Seconds"
        
        //audioPlayer.stop()
        
        sliderOutlet.isHidden = false
        startOutlet.isHidden = false
        
    }
    
    
}
