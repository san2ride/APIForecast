//
//  ViewController.swift
//  ForeCastApp
//
//  Created by don't touch me on 6/22/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

protocol WeatherAPIDelegate : class {
    func passWeather(weather: Weather)
}

class ViewController: UITableViewController {
    
    var tasksArray = [String]()
    let apiController = APIController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.apiController.fetchWeather("")
        
        self.refreshControl?.addTarget(self, action: #selector(handleRefresh), forControlEvents: .AllEvents)
        
    }
    
    
    
    func handleRefresh(refreshControl: UIRefreshControl) {
        print("handleRefresh called")
        
        refreshControl.endRefreshing()
        
        
    }
    
    @IBAction func addButton(sender: AnyObject) {
        print("add task")
        self.tasksArray.append("new task")
        self.tableView.reloadData()
        
    }
    
    @IBAction func MyUnwindSegue(segue: UIStoryboard) {
        
        if let cityController = segue.sourceViewController as? CityViewController {
            
//            CityViewController = segue.destinationViewController()
//            currentCity.name = cityController.theCity
        }
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tasksArray.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = self.tasksArray[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
    }
        
        
    }




