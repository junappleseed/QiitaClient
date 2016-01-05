//
//  ViewController.swift
//  QiitaClient
//
//  Created by Jun on 2016/01/04.
//  Copyright © 2016年 junappleseed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initLabel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initLabel(){
        let size: CGSize = UIScreen.mainScreen().bounds.size
        let label: UILabel = UILabel(frame: CGRectMake(size.width / 2 - 100, size.height / 2 - 15, 200, 30))
        
        label.text = "Hello World!"
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.whiteColor()
        label.backgroundColor = UIColor.orangeColor()
        
        self.view.addSubview(label)
    }
}
