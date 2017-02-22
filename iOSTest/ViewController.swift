//
//  ViewController.swift
//  iOSTest
//
//  Created by Sagar patel on 2017-02-21.
//  Copyright © 2017 segy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    
    @IBOutlet weak var tableview: UITableView!
    
    var list = ["","","","","","",""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableview.dataSource = self
        self.tableview.delegate = self
        
        let headerview = UIView()
        headerview.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 30)
        tableview.tableHeaderView = headerview
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            self.list.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    @IBAction func cancelbtn(_ sender: UIButton) {
       
        
    }

}

