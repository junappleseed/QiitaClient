//
//  AllTableViewController.swift
//  QiitaClient
//
//  Created by Jun on 2016/01/07.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit

class AllTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let items = ["Java", "Ruby", "JavaScript", "C", "Swift", "Lisp"]
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let piyo: UITableView = UITableView(frame: CGRectMake(50, 50 , 200, 500))
//        piyo.registerClass(UITableViewCell.self, forCellReuseIdentifier: "data")
//        piyo.dataSource = self
//        piyo.delegate = self
//        self.view.addSubview(piyo)
        
        let barHeight: CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height
        
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        tableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
//        cell.textLabel!.text = items[indexPath.row]
//        return cell
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        cell.textLabel?.text = "Row #\(indexPath.row)"
        cell.detailTextLabel?.text = "Subtitle #\(indexPath.row)"
        return cell
    }
}
