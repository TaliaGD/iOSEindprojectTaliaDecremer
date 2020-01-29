//
//  DataSource.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 29/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import Foundation
class DataSource{
    var acts: [Act]
    init(){
        acts = [Act]()
    acts.append(Act.init(name: "Reel big fish", day:"Friday 7 February", hour: "18h", stage:"Stage 1"))
    acts.append(Act.init(name: "Swashbuckle", day:"Friday 7 February", hour: "18h", stage:"Stage 2"))
    acts.append(Act.init(name: "Admiral freebie", day:"Saturday 8 February", hour: "18h", stage:"Stage 1"))
        
}
}

