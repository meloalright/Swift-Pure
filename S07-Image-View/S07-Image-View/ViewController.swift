//
//  ViewController.swift
//  S07-Image-View
//
//  Created by meloair on 2018/9/18.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var im0: UIImageView = {
        let object = UIImageView(frame: CGRect(x:(self.view.frame.size.width - 100)/2.0, y:50, width:100, height:100))
        object.image = UIImage(named: "A0.jpg")
        return object
    }()
    
    
    lazy var im1: UIImageView = {
        let object = UIImageView(frame: CGRect(x:(self.view.frame.size.width - 100)/2.0, y:400, width:100, height:100))
        object.animationImages = [UIImage(named: "A0.jpg"), UIImage(named: "A1.jpg")] as! [UIImage]
        object.animationDuration = 4.0
        object.startAnimating()
        return object
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.im0)
        self.view.addSubview(self.im1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

