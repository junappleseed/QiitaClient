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
        
        // すべてタブ
        allTabView = AllTabViewController()
        allTabView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Search, tag: 1)
        let allNavigationController = UINavigationController(rootViewController: allTabView)
        
        // フィードタブ
        feedTabView = FeedTabViewController()
        feedTabView.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 2)
        let feedNavigationController = UINavigationController(rootViewController: feedTabView)
        
        self.setViewControllers([allNavigationController, feedNavigationController], animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
