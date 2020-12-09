//
//  SecondViewController.swift
//  Passing Data Using NotificationCenter
//
//  Created by Md Khaled Hasan Manna on 10/12/20.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    //MARK:- Handlers
    

    @IBAction func mannaBtnAction(_ sender: Any) {
        NotificationCenter.default.post(name: .manna, object: nil)
        
        
    }
    
    @IBAction func khaledBtnAction(_ sender: Any) {
        NotificationCenter.default.post(name: .khaled, object: nil)
        
    }
    
}
