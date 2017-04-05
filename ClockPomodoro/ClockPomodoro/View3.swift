//
//  View3.swift
//  ClockPomodoro
//
//  Created by Mitriuc Maria on 4/5/17.
//  Copyright © 2017 ClockPomodoroProject. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

class View3: UIViewController
{
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItem(_ sender: Any)
    {
        if (input.text != "")
        {
            list.append(input.text!)
            input.text = " "
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
