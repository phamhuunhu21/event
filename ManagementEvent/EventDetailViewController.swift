//
//  EventDetailViewController.swift
//  ManagementEvent
//
//  Created by Cntt28 on 4/26/17.
//  Copyright © 2017 Cntt28. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {

    var event: Event?
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var detailText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        
        detailText.text = event?.detail
        dateLabel.text = result
    }

}
