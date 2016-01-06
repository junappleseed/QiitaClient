//
//  ViewController.swift
//  QiitaClient
//
//  Created by Jun on 2016/01/04.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    
    var allTabView: AllTabViewController!
    var feedTabView: FeedTabViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        allTabView = AllTabViewController()
        feedTabView = FeedTabViewController()
        
        allTabView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Search, tag: 1)
        feedTabView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 2)
        
        self.setViewControllers([allTabView, feedTabView], animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
