//
//  TableViewCell.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 29/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var artistBt: UIButton!
    @IBOutlet weak var stageBt: UIButton!
    var act:Act?
    
    @IBAction func actTapped(_ sender: Any) {
        if let parentViewController = self.parentViewController as? Line_Up_ViewController {
            parentViewController.performSegue(withIdentifier: "detailsSegue", sender: self)
        }
    }
    
    
    
//     override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
}
    
    extension UITableViewCell {
        var parentViewController: UIViewController? {
            var parentResponder: UIResponder? = self
            while parentResponder != nil {
                parentResponder = parentResponder!.next
                if let viewController = parentResponder as? UIViewController {
                    return viewController
                }
            }
            return nil
        }
    }


