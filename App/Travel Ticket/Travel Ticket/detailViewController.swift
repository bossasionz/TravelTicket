//
//  detailViewController.swift
//  Travel Ticket
//
//  Created by student on 10/8/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Firebase

class detailViewController: UIViewController {
    
    
    @IBOutlet weak var lbTrip: UILabel!
    @IBOutlet weak var lbPlace1: UILabel!
    @IBOutlet weak var lbPlace2: UILabel!
    @IBOutlet weak var lbPlace3: UILabel!
    @IBOutlet weak var lbPlace4: UILabel!
    @IBOutlet weak var lbPlace5: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    var trip = ""
    let db = Firestore.firestore()
    
    override func viewDidAppear(_ animated: Bool) {
        

        // Do any additional setup after loading the view.\
        
        let docRef = Firestore.firestore().collection("trip_promotion").document(trip)
        
 
        
        docRef.getDocument{ (document, err) in
            if let document = document {
                
            let Place1 = document.get("place1")
            let Place2 = document.get("place2")
            let Place3 = document.get("place3")
            let Place4 = document.get("place4")
            let Place5 = document.get("place5")
            let Price = document.get("price")
            
                self.lbTrip.text = self.trip as? String
            self.lbPlace1.text = Place1 as? String
            self.lbPlace2.text = Place2 as? String
            self.lbPlace3.text = Place3 as? String
            self.lbPlace4.text = Place4 as? String
            self.lbPlace5.text = Place5 as? String
            self.lbPrice.text = Price as? String
            }
            else{
                print("Document doesn't exist")
            }
        }
        print(trip)
    }
    @IBAction func buyTicketController(_ sender: Any) {

//        let x = Int.random(in: 1001..<99999999)
        

        var myString = String.self
       
//        let insert = [
//            
//            
//            
//            ]
        db.collection("user_buy").document("BeastNaHor").setData(["QR1" : myString ,
                                                                  "QR2" : myString ,
                                                                  "QR3" : myString ,
                                                                  "QR4" : myString ,
                                                                  "QR5" : myString ,
                                                                  "place1" : lbPlace1.text ,
                                                                  "place2" : lbPlace2.text ,
                                                                  "place3" : lbPlace3.text ,
                                                                  "place4" : lbPlace4.text ,
                                                                  "place5" : lbPlace5.text], merge: true)


    
    }
}

