//
//  Stage.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 30/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import Foundation
import MapKit
class Stage:NSObject, MKAnnotation{
    
    var title:String?
    var coordinate:CLLocationCoordinate2D
    var subtitle:String?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
    }
}


