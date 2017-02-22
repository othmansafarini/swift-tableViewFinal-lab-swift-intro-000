//
//  Planet.swift
//  TableViewFinal
//
//  Created by James Campagno on 6/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Planet {
    
    var fullOrbit: Double
    var facts: [String]
    var name: String
    var numberOfMoons: Int
    
    init(name: String, facts: [String], fullOrbit: Double, numberOfMoons: Int) {
        self.name = name
        self.facts = facts
        self.fullOrbit = fullOrbit
        self.numberOfMoons = numberOfMoons
    }
}
