//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by sebastian king on 10/28/14.
//  Copyright (c) 2014 Sebastian King. All rights reserved.
//

import Foundation
import UIKit

class EmojiViewController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😡","😜","👿","😭","😱","👹","😃","😤","👧","😏","👪","😅","💀","👶","👳","😼","😮","🙅"]
    
    var emoji = "💀"
    
    override func viewDidLoad()
    {
       self.tableView.dataSource = self
       self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = UITableViewCell()
        cell.textLabel.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.emoji = self.emojis[indexPath.row]
        self.performSegueWithIdentifier("TableViewToEmojiSegue", sender: self)

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        var detailViewController = segue.destinationViewController as EmojiDetailViewController
        detailViewController.emoji = self.emoji
        
        if self.emoji == "😡"
        {
            detailViewController.myDef = "An angry Motherfucker"
        }
        
        if self.emoji == "💀"
        {
            detailViewController.myDef = "Skull Gang"
        }
    
    }
    
}
