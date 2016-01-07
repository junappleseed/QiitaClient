//
//  AllTabViewController.swift
//  QiitaClient
//
//  Created by Jun on 2016/01/06.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit

class AllTabViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let items = ["Java", "Ruby", "JavaScript", "C", "Swift", "Lisp"]
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "すべて"
        
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight))
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
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel!.text = items[indexPath.row]
        return cell
    }
}
