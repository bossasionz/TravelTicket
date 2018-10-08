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

struct Trips {
    var tripname:String
}


class TripPromotionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var callListTableView: UITableView!
    
    let ref = Firestore.firestore().collection("TripPromotion")
    
    var tripsArray = [Any]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref.getDocuments(){ ( snapshot, err) in
            for document in (snapshot?.documents)! {
                if let Title = document.documentID as? String{
                    print(Title)

                    self.tripsArray.append(Title)

                }
            }
            
            DispatchQueue.main.async {
                print(self.tripsArray.count)
                self.callListTableView.reloadData()
            }
        }
        

        callListTableView.dataSource = self
        callListTableView.delegate = self

    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        
        return tripsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let trip = tripsArray[indexPath.row]
        cell.textLabel?.text = trip as? String
        
        
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let detailvc = self.storyboard?.instantiateViewController(withIdentifier: "detailvc") as! detailViewController
        let selectedRow = tableView.indexPathForSelectedRow!
        let currectRow = tableView.cellForRow(at: selectedRow) as! UITableViewCell
        detailvc.trip = (currectRow.textLabel?.text as? String)!
        
        
        DispatchQueue.main.async(execute: {
            self.present(detailvc, animated: true, completion: nil)
        })
    }
    
    
    
    
    
    
}
