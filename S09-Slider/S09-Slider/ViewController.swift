//
//  ViewController.swift
//  S09-Slider
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
        object.text = "Touch The Button Item Please"
        
        return object;
    }()
    
    lazy var sld: UISlider = {
        let object = UISlider()
        object.frame = CGRect(x: (self.view.frame.size.width - 100)/2.0, y: 40, width: 100, height: 40)
        object.minimumValue = 10.0;
        object.maximumValue = 99.0;
        object.isContinuous = false;
        object.addTarget(self, action: #selector(onSlideHandler), for: .valueChanged)
        
        return object
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.aLabel)
        self.view.addSubview(self.sld)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func onSlideHandler() {
        self.aLabel.text = "Slided value is " + String(self.sld.value)
    }

}

