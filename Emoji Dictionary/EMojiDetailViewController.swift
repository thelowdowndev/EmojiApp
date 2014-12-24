//
//  EMojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by sebastian king on 11/2/14.
//  Copyright (c) 2014 Sebastian King. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController
{
    @IBOutlet weak var EmojiLabel: UILabel!
    
    @IBOutlet weak var EmojiDefinition: UILabel!
    var emoji = "🗽"
    var myDef = "I should've put it here instead"
    
    override func viewDidLoad()
    {
      self.EmojiLabel.text = self.emoji
      self.EmojiDefinition.text = self.myDef
    }
}
