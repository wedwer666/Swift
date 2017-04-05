//
//  ViewController.swift
//  ClockPomodoro
//
//  Created by Mitriuc Maria on 4/4/17.
//  Copyright © 2017 ClockPomodoroProject. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var seconds = 120
    var timer = Timer()
    var audioPlayer = AVAudioPlayer()

    @IBOutlet weak var Label: UILabel!
    
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBAction func slider(_ sender: UISlider)
    {
        seconds = Int(sender.value)
        Label.text = String(seconds) + " Secunde"
    }
    
    
    @IBOutlet weak var startOutlet: UIButton!
    @IBAction func start(_ sender: Any)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
        
        sliderOutlet.isHidden = true
        startOutlet.isHidden = true
    }
    
    func counter()
    {
        seconds -= 1
        Label.text = String(seconds) + " Secunde"
        
        if (seconds == 0)
        {
            timer.invalidate()
            
            audioPlayer.play()
        }
    }
    
    @IBOutlet weak var stopOutlet: UIButton!
    
    @IBAction func stop(_ sender: Any)
    {
        timer.invalidate()
        seconds = 120
        sliderOutlet.setValue(120, animated: true)
        Label.text = "120 Secunde"
        
        audioPlayer.stop()
        
        sliderOutlet.isHidden = false
        startOutlet.isHidden = false
    }
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do
        {
            let audioPath = Bundle.main.path(forResource: "fanfare", ofType: ".mp3")
            try
            audioPlayer = AVAudioPlayer(contentsOf:URL(fileURLWithPath: audioPath!));
            //(contentsOf: URL(fileURLWithPath: audioPath!))
        }
        catch
        {
            //error, but a little bit later :)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

