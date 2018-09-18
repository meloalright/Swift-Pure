//
//  ViewController.swift
//  S08-Switch
//
//  Created by meloair on 2018/9/18.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var aLabel: UILabel = {
        let object = UILabel()
        object.frame = CGRect(x:(self.view.frame.size.width - 300)/2.0, y:(self.view.frame.size.height - 100)/2.0, width:300, height:100)
        object.numberOfLines = 0
        object.textAlignment = .center
        object.text = "Switch It"
        
        return object;
    }()
    
    lazy var sw: UISwitch = {
        let object = UISwitch()
        object.center = CGPoint(x:self.view.frame.size.width/2.0, y:100)
        object.addTarget(self, action: #selector(self.onSwitchHandler), for: .valueChanged)
        
        
        return object
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.aLabel)
        self.view.addSubview(self.sw)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func onSwitchHandler() {
        self.aLabel.text = "Switched " + (self.sw.isOn == true ? "on": "off")
    }
    
}

