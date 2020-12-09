//
//  ViewController.swift
//  Passing Data Using NotificationCenter
//
//  Created by Md Khaled Hasan Manna on 10/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK:-Properties
    
    @IBOutlet weak var myImg: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next->", style: .done, target: self, action: #selector(next(_:)))
        
        NotificationCenter.default.addObserver(self, selector: #selector(manna(_:)), name: .manna, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(khaled(_:)), name: .khaled, object: nil)

        
    }
    @objc func next(_ sender : UIBarButtonItem){
        let sVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(sVC, animated: true)
    }
    
    @objc func manna(_ sender: NotificationCenter){
        myImg.image = #imageLiteral(resourceName: "Manna copy 2")
        nameLbl.text = "Manna"
    }
    @objc func khaled(_ sender: NotificationCenter){
        myImg.image = #imageLiteral(resourceName: "Manna copy")
        nameLbl.text = "Khaled"
    }
    

   

}

extension Notification.Name{
    
    
    static let manna = Notification.Name(rawValue: "manna")
    static let khaled = Notification.Name(rawValue: "khaled")
}
