//
//  TableViewController.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 29/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var dag1Items:[Act] = []
    var dag2Items:[Act] = []
    var data = DataSource.init()

    override func viewDidLoad() {
        
        super.viewDidLoad()
            for item in data.acts {
            if item.day == "Friday 7 February"{
                dag1Items.append(item)
            }else{
                dag2Items.append(item)
            }
        }
        
        print(dag1Items)
           print(dag2Items)

    }
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return dag1Items.count
         case 1:
            return dag2Items.count
        default:
            return 0
        }
    }

   
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        switch indexPath.section {
        case 0:
            cell.artistBt.accessibilityLabel = dag1Items[indexPath.row]
        default:
            <#code#>
        }
        
    }
//        let currentCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
//        let currentAct = data.acts[indexPath.row]
//
//        currentCell.artistBt.accessibilityLabel = currentAct.name
//        currentCell.timeLbl.text = currentAct.hour
//        currentCell.stageBt.accessibilityLabel = currentAct.stage
//
//
//
//        return currentCell

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
