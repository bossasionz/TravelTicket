//
//  listTable.swift
//  Travel Ticket
//
//  Created by student on 9/11/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class listTable: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let ticketLabel = ["ticket1","ticket2","ticket3"]
    let ticketPic = ["r","g","g"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (ticketLabel.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell._UiImage.image = UIImage(named: (ticketPic[indexPath.row] + ".jpg"))
        cell._Label.text = ticketLabel[indexPath.row]
        
        return (cell)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
