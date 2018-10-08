//
//  DetailViewController.swift
//  Travel Ticket
//
//  Created by SiRiPonG! on 8/10/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func confirmBtn(_ sender: Any) {
        let alertController = UIAlertController(title: "ยืนยันคำสั่งซื้อ ", message: "คุณต้องการจะซื้อสินค้าใช่ไหม?", preferredStyle: UIAlertControllerStyle.alert)
        let cancel = UIAlertAction(title: "ยกเลิก", style: UIAlertActionStyle.default, handler: {(action) -> Void in
            //The (withIdentifier: "VC2") is the Storyboard Segue identifier.
        })
        
        let ok = UIAlertAction(title: "ยืนยัน", style: UIAlertActionStyle.default, handler: {(action) -> Void in
            //The (withIdentifier: "VC2") is the Storyboard Segue identifier.
            self.performSegue(withIdentifier: "ConfirmBuy", sender: self)
        })
        
        alertController.addAction(cancel)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
    }
        
//        // create the alert
//        let alert = UIAlertController(title: "ยืนยันคำสั่งซื้อ", message: "คุณต้องการจะซื้อสินค้าใช่ไหม?", preferredStyle: UIAlertController.Style.alert)
//
//        // add the actions (buttons)
//        alert.addAction(UIAlertAction(title: "ยกเลิก", style: UIAlertAction.Style.default, handler: nil))
//        alert.addAction(UIAlertAction(title: "ยืนยัน", style: UIAlertAction.Style.cancel, handler: nil))
//
//        // show the alert
//        self.present(alert, animated: true, completion: nil)
//    }
}

