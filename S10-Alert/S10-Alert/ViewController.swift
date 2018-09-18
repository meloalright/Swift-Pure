//
//  ViewController.swift
//  S10-Alert
//
//  Created by meloair on 2018/9/18.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var aLabel: UILabel = {
        let object = UILabel()
        object.frame = CGRect(x:(self.view.frame.size.width - 300)/2.0, y:100, width:300, height:100)
        object.numberOfLines = 0
        object.textAlignment = .center
        object.text = "Alert Result"
        
        return object;
    }()
    
    lazy var alertController: UIAlertController = {
        let object = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
        object.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action) in
            self.aLabel.text = "OK action button tapped"
        }))
        object.addAction(UIAlertAction(title: "NO", style: .cancel, handler: {(action) in
            self.aLabel.text = "NO action button tapped"
        }))
        return object
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.aLabel)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.present(self.alertController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

