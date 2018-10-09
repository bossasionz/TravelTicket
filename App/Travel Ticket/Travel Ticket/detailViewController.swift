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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.\
        
        let docRef = Firestore.firestore().collection("TripPromotion").document(trip)
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
