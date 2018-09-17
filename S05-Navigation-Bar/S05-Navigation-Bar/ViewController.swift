//
//  ViewController.swift
//  S05-Navigation-Bar
//
//  Created by meloair on 2018/9/17.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var button : UIButton = {
        let object = UIButton(type: .roundedRect) as UIButton
        object.frame = CGRect(x:(self.view.frame.size.width - 200)/2.0, y:60, width:200, height:40)
        object.setTitle("Navigate To Next View", for: .normal)
        object.addTarget(self, action: #selector(onTouchHandler), for: .touchDown)
        
        return object
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func onTouchHandler() {
        let nvc = NextViewController()
        self.navigationController?.pushViewController(nvc, animated: true)
        //self.navigationController?.pushViewController(ViewController(), animated: true)
    }

}

