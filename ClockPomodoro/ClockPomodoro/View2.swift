//
//  View2.swift
//  ClockPomodoro
//
//  Created by Mitriuc Maria on 4/5/17.
//  Copyright © 2017 ClockPomodoroProject. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit
var list = ["Cumpara produse", "Merg pe bicicleta", "Do labolatoare" ]

class View2: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var MyTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)

    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //populate the table view
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if (editingStyle == UITableViewCellEditingStyle.delete)
        {
            list.remove(at: indexPath.row)
            MyTableView.reloadData();
        }
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        MyTableView.reloadData()
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
