//
//  ViewController.swift
//  MHTableView
//
//  Created by MohammedAlimoor on 03/12/2018.
//  Copyright (c) 2018 MohammedAlimoor. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView!

    
    var count = 20;
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "ExampleTableViewCell", for: indexPath)as! ExampleTableViewCell;
        cell.lbl_name.text = "item \(indexPath.row)"
        cell.lbl_number.text = "\(indexPath.row)"

        return cell
    }
    
    @IBAction func ReloadClick(_ sender: Any) {
        count = 20
        tableview.reloadData()
       
    }

    @IBAction func Empty1Click(_ sender: Any) {
        
        count = 0
        tableview.reloadData()
        
    }
    @IBAction func Empty2Click(_ sender: Any) {
        count = 0
        tableview.reloadData()
    }
    @IBAction func Empty3Click(_ sender: Any) {
        count = 0
        tableview.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

