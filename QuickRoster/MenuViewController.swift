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
    
    var menuNames: Array = [String]() //array of the side bar menu names
    var iconImgs: Array = [UIImage]() //array of images that are displayed  for each option on the side bar
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menuNames = ["Home","Shifts", "Staff", "Statistics", "Notices", "Account", "Logout"]
        iconImgs = [UIImage(named: "home")!, UIImage(named: "shifts")!, UIImage(named: "staff")!, UIImage(named: "stats")!, UIImage(named: "notices")!, UIImage(named: "account")!, UIImage(named: "logout")!]
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
        //functions for displaying the correct informaton 
        if cell.menuLabel.text! == "Home"{
            homeView(revealVC: revealViewController)
        }else if cell.menuLabel.text! == "Staff"{
            staffView(revealVC: revealViewController)
        }else if cell.menuLabel.text! == "Shifts"{
            shiftsView(revealVC: revealViewController)
        }else if cell.menuLabel.text! == "Statistics"{
           statsView(revealVC: revealViewController)
        }else if cell.menuLabel.text! == "Notices"{
            noticesView(revealVC: revealViewController)
        }else if cell.menuLabel.text! == "Account"{
            accountView(revealVC: revealViewController)
        }else if cell.menuLabel.text! == "Logout"{
            //need to do logout
        }else{
            //do something if there  is a an error
        }
 
    }
    
    
    
    func homeView(revealVC: SWRevealViewController){
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let destController = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let newFrontViewController = UINavigationController.init(rootViewController: destController)
        revealViewController().pushFrontViewController(newFrontViewController, animated: true)
    }
    
    
    func shiftsView(revealVC: SWRevealViewController){
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let destController = mainStoryBoard.instantiateViewController(withIdentifier: "ShiftViewController") as! ShiftViewController
        let newFrontViewController = UINavigationController.init(rootViewController: destController)
        revealViewController().pushFrontViewController(newFrontViewController, animated: true)
    }
    
    
    func staffView(revealVC: SWRevealViewController){
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let destController = mainStoryBoard.instantiateViewController(withIdentifier: "StaffViewController") as! StaffViewController
        let newFrontViewController = UINavigationController.init(rootViewController: destController)
        revealViewController().pushFrontViewController(newFrontViewController, animated: true)
    }
    
    
    func statsView(revealVC: SWRevealViewController){
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let destController = mainStoryBoard.instantiateViewController(withIdentifier: "StatisticsViewController") as! StatisticsViewController
        let newFrontViewController = UINavigationController.init(rootViewController: destController)
        revealViewController().pushFrontViewController(newFrontViewController, animated: true)
    }
    
    
    func accountView(revealVC: SWRevealViewController){
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let destController = mainStoryBoard.instantiateViewController(withIdentifier: "AccountViewController") as! AccountViewController
        let newFrontViewController = UINavigationController.init(rootViewController: destController)
        revealViewController().pushFrontViewController(newFrontViewController, animated: true)
    }
    
    func noticesView(revealVC: SWRevealViewController){
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let destController = mainStoryBoard.instantiateViewController(withIdentifier: "NoticeViewController") as! NoticeViewController
        let newFrontViewController = UINavigationController.init(rootViewController: destController)
        revealViewController().pushFrontViewController(newFrontViewController, animated: true)
    }
    

    
}
