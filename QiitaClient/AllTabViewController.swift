//
//  AllTabViewController.swift
//  QiitaClient
//
//  Created by Jun on 2016/01/06.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class AllTabViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var articles: [[String: String?]] = []
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "すべて"

        tableViewSetting()
        updateTable()
    }
    
    func tableViewSetting() {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        self.view.addSubview(tableView)
    }
    
    func updateTable() {
        Alamofire.request(.GET, "https://qiita.com/api/v2/items", parameters: ["per_page": "20"])
        .responseJSON { response in
            guard let object = response.result.value else {
                self.showAlertMessage()
                return
            }
            
            let json = JSON(object)
            json.forEach { (_, json) in
                let article: [String: String?] = [
                    "title": json["title"].string
                ]
                self.articles.append(article)
            }
            self.tableView.reloadData()
        }
    }
    
    func showAlertMessage() {
        let alert = UIAlertController(title: "ネットワークエラー", message: "ネットワークに接続できません。", preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        let article = articles[indexPath.row]
        cell.textLabel?.text = article["title"]!
        return cell
    }
}
