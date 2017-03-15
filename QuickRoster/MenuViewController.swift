//
//  MenuViewController.swift
//  QuickRoster
//
//  Created by Phillip Simmonds on 8/03/17.
//  Copyright © 2017 Simmonds Development. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menuNames: [String] = [] // Array of the side bar menu names
    var iconImgs: [UIImage] = [] // Array of the side bar menu icons
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set menu items
        menuNames = ["Home","Shifts", "Staff", "Statistics", "Notices", "Account", "Logout"]
        let imgNames = ["home","shifts", "staff", "stats", "notices", "account", "logout"]
        for s in imgNames{
            iconImgs.append(UIImage(named: s)!);
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell") as! MenuTableViewCell
        cell.menuLabel.text! = menuNames[indexPath.row]
        cell.imgIcon.image = iconImgs[indexPath.row]
        //do that same for the images just .image and UIImage
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuNames.count
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealViewController: SWRevealViewController = self.revealViewController()
        let cell: MenuTableViewCell = tableView.cellForRow(at: indexPath) as! MenuTableViewCell
        
        // Declare story board and view controller
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var destController : UIViewController
        
        switch(cell.menuLabel.text){
            
        case "Home"?:
            destController = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            
        case "Staff"?:
            destController = mainStoryBoard.instantiateViewController(withIdentifier: "StaffViewController") as! StaffViewController

       
        case "Shifts"?:
            destController = mainStoryBoard.instantiateViewController(withIdentifier: "ShiftViewController") as! ShiftViewController
            
        case "Statistics"?:
            destController = mainStoryBoard.instantiateViewController(withIdentifier: "StatisticsViewController") as! StatisticsViewController
            
            
        case "Notices"?:
            destController = mainStoryBoard.instantiateViewController(withIdentifier: "NoticeViewController") as! NoticeViewController
            
        case "Account"?:
            destController = mainStoryBoard.instantiateViewController(withIdentifier: "AccountViewController") as! AccountViewController
            
        case "Logout"?:
            destController = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController

            // TODO logout
            
        default:
            destController = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController

           // TODO error
            
            
        }
        
        let newFrontViewController = UINavigationController.init(rootViewController: destController)
        revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        
      
    }
    
}
