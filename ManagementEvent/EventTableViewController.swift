//
//  EventTableViewController.swift
//  ManagementEvent
//
//  Created by Cntt28 on 4/22/17.
//  Copyright © 2017 Cntt28. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {

    lazy var eventLines: [EventLine] = {   // Mảng các event
        return EventLine.eventLines()
    }()
    
    
    // Thực hiện chèn header bên trên lấy ra name là thuộc tính trong EventLine
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let eventLine = eventLines[section]
        return eventLine.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return eventLines.count  // số section hiển thị trên table view
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let eventLine = eventLines[section]
        return eventLine.events.count     // số event của mỗi section
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as! EventTableViewCell

        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        
        cell.configureCellWith(event: event)

        return cell
    }
    

    //Edit event trong table view
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.delete){
            let eventLine = eventLines[indexPath.section]
            eventLine.events.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        }
    }

    
    //Sort event trong table view
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let eventLine = eventLines[sourceIndexPath.section]
        let event = eventLine.events[sourceIndexPath.row]
        eventLine.events.remove(at: sourceIndexPath.row)
        let evenLineDes = eventLines[destinationIndexPath.section]
        evenLineDes.events.insert(event, at: destinationIndexPath.row)
    }
    
    //Hien thi detail cua event
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
                case "Show Detail":
                    let eventDetailVC = segue.destination as! EventDetailViewController
                    if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell){
                        eventDetailVC.event = eventAtIndexPath(indexPath: indexPath as NSIndexPath)
                    }
                default: break
                
            }
        }
    }
    
    func eventAtIndexPath(indexPath: NSIndexPath) -> Event{
        let eventLine = eventLines[indexPath.section]
        return eventLine.events[indexPath.row]
    }
    
}
