//
//  File.swift
//  ManagementEvents
//
//  Created by Cntt28 on 4/22/17.
//  Copyright © 2017 Cntt28. All rights reserved.
//

import Foundation
import UIKit


// Represents a generic product. Need an image named "default"

class Event
{
    var title: String
    var detail: String
    var date: String
        
    init(titled: String, details: String, dates: String)
    {
        self.title = titled
        self.detail = details
        self.date = dates
    }
}



