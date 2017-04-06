//
//  ViewController.swift
//  ClockPomodoro
//
//  Created by Mitriuc Maria on 4/6/17.
//  Copyright © 2017 ClockPomodoroProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var stopOutlet: UIButton!
    @IBOutlet weak var labelStart: UILabel!
    @IBOutlet weak var startOutlet: UIButton!
    var tableController = myTableViewController()
    
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
        labelStart.text = String(format: "%.2f", sender.value)
    }
    @IBAction func startAction(_ sender: Any)
    {
    }

    @IBAction func stop(_ sender: Any)
    {
        
    }
    
    
}
