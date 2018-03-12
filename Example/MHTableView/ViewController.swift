//
//  ViewController.swift
//  MHTableView
//
//  Created by MohammedAlimoor on 03/12/2018.
//  Copyright (c) 2018 MohammedAlimoor. All rights reserved.
//

import UIKit
import MHTableView
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
        
          tableview.showEmpty(text: "")
        tableview.showEmpty(text: "Sorry there is no data")

    }
    @IBAction func Empty2Click(_ sender: Any) {
        count = 0
        tableview.reloadData()
        tableview.showEmpty(text: "Connection Error", buttonText: "Try") {
            self.tableview.showEmpty(text: "Yaaaaa :)")
        }

    }
    @IBAction func Empty3Click(_ sender: Any) {
        count = 0
        tableview.reloadData()
        tableview.showEmpty(text: "Connection Error", buttonText: "Try", image: #imageLiteral(resourceName: "error.png")) {
            self.tableview.showEmpty(text: "Yaaaaa :)")

        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.tableFooterView = UIView()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

