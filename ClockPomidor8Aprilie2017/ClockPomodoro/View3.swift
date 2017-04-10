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
//    var data = ["Press 30 secunde","Mers pe bicicleta ","Invatare swift","Learing 30 secunde!","Somn","Food" ,
//                "Shoping","Sarituri","Muzica","Dans","Odihna","Vizualizare video"]
    @IBOutlet weak var input: UITextField!
    
    //var titleString: String!
    @IBOutlet weak var titleLabel: UILabel!
    
//    @IBAction func addItem(_ sender: Any)
//    {
//        if (input.text != "")
//        {
//           data.append(input.text!)
//            input.text = " "
//        }
//    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.titleLabel.text = self.titleString
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "red.jpg")!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
