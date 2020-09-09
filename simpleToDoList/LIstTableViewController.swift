//
//  LIstTableViewController.swift
//  simpleToDoList
//
//  Created by TANG,QI-RONG on 2020/9/9.
//  Copyright © 2020 Steven. All rights reserved.
//

import UIKit

class LIstTableViewController: UITableViewController {

    let AppleProducts = ["iPhone", "iPhone3G", "iPhone3GS", "iPhone4", "iPhone4S", "iPhone5", "iPhone5S", "iPhone6", "iPhone6 Plus", "iPhone6S", "iPhone6S Plus", "iPhoneSE", "iPhone7", "iPhone7 Plus", "iPhone8", "iPhone8 Plus", "iPhoneX", "iPhoneXR", "iPhoneXs", "iPhone11","iPhone11 Pro", "iPhone11 MAX", "iPhone12", "Apple Watch", "iPad", "iPad2", "iPad3", "iPad Pro", "iPadPro 11", "iPadPro 12.9", "iPad Mini", "MacBook", "MacBook Air", "MacBook Pro", "PowerBook", "Mac Pro", "iMac", "iMac G4", "iBook G3", "iPod", "20000NT輪子"]
    
    var isBuy: [Bool]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        isBuy = Array(repeating: false, count: AppleProducts.count)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return AppleProducts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier = "AppleProducts"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = AppleProducts[row]
        if isBuy![row] {
            cell.accessoryType = .checkmark
        }else {
            cell.accessoryType = .none
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        isBuy![indexPath.row] = !isBuy![indexPath.row]
        tableView.reloadData()
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
