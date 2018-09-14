//
//  ViewController.swift
//  S04-Table-View
//
//  Created by meloair on 2018/9/14.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let myArray: NSArray = ["First","Second","Third","Fourth","Fifth","Sixth","Seventh"]
    
    lazy var tableView: UITableView = {
        let object = UITableView(frame: self.view.bounds, style: .grouped)
        object.delegate = self
        object.dataSource = self
        object.rowHeight = UITableViewAutomaticDimension
        object.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        return object
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("Num: \(indexPath.row) Value: \(myArray[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(myArray[indexPath.row])"
        return cell
    }


}

