//
//  EventTableViewCell.swift
//  ManagementEvent
//
//  Created by Cntt28 on 4/22/17.
//  Copyright © 2017 Cntt28. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    
    @IBOutlet weak var eventTitleLabel: UILabel!
    @IBOutlet weak var eventDetailLabel: UILabel!
    
    func configureCellWith(event: Event){
        eventTitleLabel.text = event.title
        eventDetailLabel.text = event.detail
    }
}
