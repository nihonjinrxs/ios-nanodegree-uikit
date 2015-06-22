//
//  ViewController.swift
//  DoReMi
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {

    // Use this string property as your reuse identifier, 
    // Storyboard has been set up for you using this String.
    let cellReuseIdentifier = "MyCellReuseIdentifier"
    
    // Choose some data to show in your table
    struct Note {
        let title: String
        let detail: String
        init(title: String, detail: String) {
            self.title = title
            self.detail = detail
        }
    }
    
    let model = [
        Note(title:"Do", detail:"A deer, a female deer"),
        Note(title:"Re", detail:"A drop of golden sun"),
        Note(title:"Mi", detail:"A name I call myself"),
        Note(title:"Fa", detail:"A long, long way to run"),
        Note(title:"Sol", detail:"A needle pulling thread"),
        Note(title:"La", detail:"A note to follow Sol"),
        Note(title:"Ti", detail:"A drink with jam and bread")
    ]
    
    // Add the two essential table data source methods here
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseIdentifier)!
        cell.textLabel?.text = self.model[indexPath.row].title
        cell.detailTextLabel?.text = self.model[indexPath.row].detail
        return cell
    }
}

