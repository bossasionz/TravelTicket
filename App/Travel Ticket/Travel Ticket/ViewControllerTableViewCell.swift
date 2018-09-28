//
//  ViewControllerTableViewCell.swift
//  Travel Ticket
//
//  Created by student on 9/11/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var _UiImage: UIImageView!
    @IBOutlet weak var _Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
