//
//  myTableViewController.swift
//  ClockPomodoro
//
//  Created by Mitriuc Maria on 4/6/17.
//  Copyright © 2017 ClockPomodoroProject. All rights reserved.
//

import UIKit

class myTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{

    @IBOutlet weak var testTable: UITableView!
    var data = ["Press 30 secunde","Mers pe bicicleta ","Invatare swift","Learing 30 secunde!","Somn","Food" ,
                "Shoping","Sarituri","Muzica","Dans","Odihna","Vizualizare video"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        testTable.delegate = self
        testTable.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath) as! testTableViewCell
        cell.textLabel?.text = data[indexPath.row ]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "setTaskName"), object: data[indexPath.row])
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
