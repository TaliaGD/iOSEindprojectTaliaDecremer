//
//  Line_Up_ViewController.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 30/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit

class Line_Up_ViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    let data:ActDataSource = ActDataSource.init()
    var fridayActs = [Act]()
    var saturdayActs = [Act]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for act in data.acts{
            if act.day == "Friday 7 February" {
                fridayActs.append(act)
            } else {
                saturdayActs.append(act)
            }
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return fridayActs.count
            
        }else{
            return saturdayActs.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //maakt verwijzingen naar cell in storyboard
        let currentCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier:"cell") as! TableViewCell
        //product voorde juiste rij uit datascource halenin de juiste section
        var currentAct:Act
        if indexPath.section == 0 {
            currentAct = fridayActs[indexPath.row]
        } else {
            currentAct = saturdayActs[indexPath.row]
        }
        
        //cell opvullen met product
        currentCell.artistBt.setTitle(currentAct.name, for: UIControl.State.normal)
        currentCell.timeLbl.text = currentAct.hour
        currentCell.stageBt.setTitle(currentAct.stage, for: UIControl.State.normal)
        
        
        return currentCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Friday"
            
        }else{
            return "Saturday"
        }
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}

