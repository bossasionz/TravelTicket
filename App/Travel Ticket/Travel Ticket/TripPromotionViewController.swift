//
//  TableViewController.swift
//  Travel Ticket
//
//  Created by SiRiPonG! on 5/10/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class TripPromotionViewController: UIViewController{
    @IBOutlet weak var callListTableView: UITableView!
    
    var doccount = 0
    let ref = Firestore.firestore().collection("TripPromotion")
    
    //    func numberOfSections(in tableView: UITableView) -> Int {
    //        return 1
    //    }
    //
    //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        return myCallList.count
    //    }
    //
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //
    //        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath) as! TripPromotionViewControllerTableViewCell
    //
    //        let test = myCallList[indexPath.row]
    //        cell.callType?.text = test.callType
    //        cell.callHospital?.text = test.callHospital
    //
    //        return cell
    //    }
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref.getDocuments(){ (Snapshot , err ) in
            for document in Snapshot!.documents {
                self.doccount += 1
                print(document)
            }
            print(self.doccount)
            
        }
        
        //        callListTableView.dataSource = self
        //        callListTableView.delegate = self
    }
    
    
    
    
    
    
}
