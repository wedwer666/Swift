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
    
    // var titleString: String!
   //var data = [String]();
    
    var data = ["Press 30 secunde","Mers pe bicicleta ","Invatare swift","Learing 30 secunde!","Somn","Food" ,
   "Shoping","Sarituri","Muzica","Dans","Odihna","Vizualizare video"]

    @IBOutlet weak var myB: UIButton!
    
//    @IBAction func addTask(_ sender: Any)
//    {
//        let alert = UIAlertController(title: "Adauga nr. taskului",message: "Adauga taskul", preferredStyle: .alert)
//        
//        let save = UIAlertAction(title: "Save", style: .default)
//        {
//            (alertAction: UIAlertAction) in
//        
//            let addTask = alert.textFields?[0].text!;
//            self.data.append(addTask!);
//            
//          //  self.present(alert, animated: true, completion:nil);
//        }
//        
//        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil);
//        
//        alert.addTextField(configurationHandler: nil);
//        
//        alert.addAction(save);
//        alert.addAction(cancel);
//        
//        self.present(alert, animated: true, completion:nil);
//        self.testTable.reloadData();
//            
//    }
    
   // var data = [String]();
   // @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "red.jpg")!)
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
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "red.jpg")!)
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath) as! testTableViewCell
        cell.textLabel?.text = data[indexPath.row ]
        cell.backgroundColor = UIColor.green
        //cell.shareButton.tag = indexPath.row
        ///cell.shareButton.addTarget(self, action: Selector("logAction:"), for: .touchUpInside)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "setTaskName"), object: data[indexPath.row])
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCelleditingStyle, didSelectRowAt indexPath: IndexPath)
//    {
//        if editingStyle = UITableViewCelleditingStyle.delete
//        {
//            data.remove(at: indexPath.row)
//            myTableView.reloadData()
//        }
//    }
//    
//    override func viewDidAppear( _animated : bool)
//    {
//        myTableView.reloadData()
//    }
//
    
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
