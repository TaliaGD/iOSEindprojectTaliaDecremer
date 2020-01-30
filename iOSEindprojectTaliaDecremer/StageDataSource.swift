//
//  StageDataSource.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 30/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import Foundation
import MapKit

class StageDataSource{
    
      var stage: [Stage]
    
  init(){
      stage = [Stage]()
      
      let pinStage1 = Stage.init( coordinate: CLLocationCoordinate2DMake(51.149444, 2.7575), title: "Stage 1", subtitle: "Lombardsijde-Bad")
      stage.append(pinStage1)
      
      let pinStage2 = Stage.init(coordinate: CLLocationCoordinate2DMake(51.159444, 2.768333),title: "Stage 2", subtitle: "Westende-Bad")
      stage.append(pinStage2)
      }
  }
