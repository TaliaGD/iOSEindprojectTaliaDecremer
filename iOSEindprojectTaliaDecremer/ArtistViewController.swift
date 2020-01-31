//
//  ArtistViewController.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 30/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit

class ArtistViewController: UIViewController {

    @IBOutlet weak var imageImg: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
        
    @IBOutlet weak var aboutLbl: UITextView!
    
    
    var selectedAct: Act?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedAct != nil{
        nameLbl.text = selectedAct!.name
        imageImg.image = UIImage.init(named: selectedAct!.image)
        aboutLbl.text = selectedAct!.about}
        // Do any additional setup after loading the view.
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
