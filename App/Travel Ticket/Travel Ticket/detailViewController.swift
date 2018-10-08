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
    
    var trip = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.\
        
        let docRef = Firestore.firestore().collection("TripPromotion").document(trip)
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
