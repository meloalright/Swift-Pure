//
//  ViewController.swift
//  S00-Text-Field
//
//  Created by meloair on 2018/9/12.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var label : UILabel = {
        let object = UILabel(frame: CGRect.zero)
        object.text = "@"
        object.font = UIFont.boldSystemFont(ofSize: 14)
        object.sizeToFit()
        return object
    }()
    
    lazy var textField : UITextField = {
        let object = UITextField(frame: CGRect(x:(self.view.frame.size.width - 80)/2, y:(self.view.frame.size.height - 50)/2, width:80, height:50))
        object.placeholder = "Simple Text Field"
        object.textAlignment = .center
        object.font = UIFont.boldSystemFont(ofSize: 14)
        return object
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.label)
        
        self.textField.leftView = self.label
        self.textField.leftViewMode = UITextFieldViewMode.always
        
        self.view.addSubview(self.textField)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

