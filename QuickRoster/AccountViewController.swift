//
//  AccountViewController.swift
//  QuickRoster
//
//  Created by Phillip Simmonds on 9/03/17.
//  Copyright © 2017 Simmonds Development. All rights reserved.
//

import Foundation
import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
