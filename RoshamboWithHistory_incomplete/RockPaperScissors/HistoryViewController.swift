//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Ryan Harvey on 6/27/15.
//  Copyright © 2015 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {
    
    var history = [RPSMatch]()
    
    override func viewWillAppear(animated:Bool)
    {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
    }
    
    // UITableViewDataSource methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HistoryCell")! as UITableViewCell
        let match = self.history[indexPath.row]
        
        if (match.p1 == match.p2) {
            cell.textLabel?.text = "Tie!"
            cell.imageView?.image = UIImage(named: "itsATie")!
            if let detailTextLabel = cell.detailTextLabel {
                detailTextLabel.text = "Both threw \(match.p1.description)"
            }
        } else {
            cell.textLabel?.text = (match.winner == match.p1) ? "Win!" : "Lose!"
            let imageName = match.winner.description.lowercaseString
            cell.imageView?.image = UIImage(named: imageName)!
            if let detailTextLabel = cell.detailTextLabel {
                detailTextLabel.text = "\(match.winner.description) defeats \(match.loser.description)"
            }
        }
        
        return cell
    }
}
