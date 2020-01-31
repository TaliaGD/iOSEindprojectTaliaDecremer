//
//  DataSource.swift
//  iOSEindprojectTaliaDecremer
//
//  Created by mobapp13 on 29/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import Foundation
class ActDataSource{
    
    var acts: [Act]
    
    init(){
        acts = [Act]()
        acts.append(Act.init(name: "Reel big fish", about:"""
Reel big fish, Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.
""", image: "ReelBigFish.jpg", day:"Friday 7 February", hour: "18h", stage:"Stage 1"))
        acts.append(Act.init(name: "Swashbuckle", about:"""
Swashbuckle, Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.
""", image: "Swashbuckle.jpg",day:"Friday 7 February", hour: "19h", stage:"Stage 2"))
        acts.append(Act.init(name: "Admiral freebie", about:"""
Admiral freebie, Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.
""", image: "AdmiralFreebie.jpg",day:"Saturday 8 February", hour: "20h", stage:"Stage 1"))
        
    }
}

