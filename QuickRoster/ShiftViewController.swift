//
//  ShiftViewController.swift
//  QuickRoster
//
//  Created by Phillip Simmonds on 8/03/17.
//  Copyright © 2017 Simmonds Development. All rights reserved.
//

import Foundation
import UIKit

class ShiftViewController: UIViewController {
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var welcomeMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       menuButton.target = revealViewController()
       menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
       self.welcomeMessage.text! = String("Adams a fucken homo")
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

