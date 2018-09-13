//
//  ViewController.swift
//  S03-Tool-Bar
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
        object.text = "Touch The Button Item Please"
        
        return object;
    }()
    
    lazy var toolBar : UIToolbar = {
        let object = UIToolbar()
        let spaceItem = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil)
        let customItem1 = UIBarButtonItem(
            barButtonSystemItem: .compose,
            target: self,
            action: #selector(self.toolBarItem1Handler))
        let customItem2 = UIBarButtonItem(
            barButtonSystemItem: .compose,
            target: self,
            action: #selector(self.toolBarItem2Handler))
        

        customItem1.title = "Tool1"
        customItem2.title = "Tool2"
        
        
        
        let toolBarItemsArray = [customItem1, spaceItem, customItem2]
        
        object.frame = CGRect(x: 0, y: self.view.frame.size.height - 50, width: self.view.frame.size.width, height: 50)
        object.barStyle = .blackOpaque
        object.setItems(toolBarItemsArray, animated: false)
        
        return object
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.aLabel)
        self.view.addSubview(self.toolBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func toolBarItem1Handler() {
        self.aLabel.text = "Tool 1 Selected"
    }
    @objc func toolBarItem2Handler() {
        self.aLabel.text = "Tool 2 Selected"
    }
}

