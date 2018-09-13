//
//  ViewController.swift
//  S02-Label
//
//  Created by meloair on 2018/9/13.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var aLabel: UILabel = {
        let object = UILabel()
        object.frame = CGRect(x:(self.view.frame.size.width - 300)/2.0, y:(self.view.frame.size.height - 300)/2.0, width:300, height:300)
        object.numberOfLines = 0
        object.textColor = .white
        object.backgroundColor = .black
        object.textAlignment = .center
        object.text = "This is a sample text\n of multiple lines. \n here number of lines is not limited."
        
        return object;
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.aLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

