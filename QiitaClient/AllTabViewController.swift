//
//  AllTabViewController.swift
//  QiitaClient
//
//  Created by Jun on 2016/01/06.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit

class AllTabViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initLabel()
        
        self.title = "すべて"
    }
    
    func initLabel() {
        let size: CGSize = UIScreen.mainScreen().bounds.size
        let label: UILabel = UILabel(frame: CGRectMake(size.width / 2 - 100, size.height / 2 - 15, 200, 30))
        
        label.text = "すべて"
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.whiteColor()
        label.backgroundColor = UIColor.greenColor()
        
        self.view.addSubview(label)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
