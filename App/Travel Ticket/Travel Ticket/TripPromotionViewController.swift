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

class TripPromotionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var callListTableView: UITableView!
    
    let ref = Firestore.firestore().collection("TripPromotion")
    
    var doccount = 0
    
    var tripname = [""]
//    var tripprice = [""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref.getDocuments(){ (Snapshot , err ) in
            var count = 0
            for document in Snapshot!.documents {
                self.tripname.append(document.documentID)
                count += 1
            }
            print(count)
            self.doccount = count
            print(self.doccount)

        }
        
                callListTableView.dataSource = self
                callListTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "\(doccount)"
        
        return cell
    }
    
    
    
    
    
    
}
