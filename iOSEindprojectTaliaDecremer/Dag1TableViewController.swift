//
//  Dag1TableViewController.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 30/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit

class Dag1TableViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewDag1: UITableView!
    
    let data:DataSource = DataSource.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
        
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section:Int) -> Int{
        
        for item in data.acts {
            if item.day == "Friday 7 February"{
                
                return data.acts.count
                
            }
            
            func tableView(_ tableView:UITableView, cellForRowAt indexPath:
                IndexPath) -> UITableViewCell{
                //maakt verwijzingen naar cell in storyboard
                let currentCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier:"cell") as!TableViewCell
                //product voorde juiste rij uit datascource halen
                let currentAct = data.acts[indexPath.row]
                //cell opvullen met product
                
                
                currentCell.artistBt.accessibilityLabel = currentAct.name
                currentCell.timeLbl.text = currentAct.hour
                currentCell.stageBt.accessibilityLabel = currentAct.stage
                
                
                return currentCell
                
            
        }
}
}
}
