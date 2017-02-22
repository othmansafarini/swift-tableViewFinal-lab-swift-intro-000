//
//  PlanetTableViewController.swift
//  TableViewFinal
//
//  Created by James Campagno on 6/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class PlanvarableViewController: UITableViewController {
    var planetCellIdentifier = "PlanetCell"
    var planets: [Planet] = []
    
    func generatePlanetInfo() {
        let earth = Planet(name: "Earth", facts: [], fullOrbit: 365.26, numberOfMoons: 1)
        let mars = Planet(name: "Mars", facts: [], fullOrbit: 687.0, numberOfMoons: 2)
        
        earth.facts = ["Earth is the only planet not named after a god.",
                       "Earth has a powerful magnetic field.",
                       "Earth was once believed to be the center of the universe."]
        
        mars.facts = ["Mars and Earth have approximately the same landmass.",
                      "Mars is home to the tallest mountain in the solar system.",
                      "Pieces of Mars have fallen to Earth."]
        
        planets = [earth, mars]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        generatePlanetInfo()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    override func tableView(_ tableVieew: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableVieew.dequeueReusableCell(withIdentifier: planetCellIdentifier, for: indexPath)
        let animalTitle = planets[indexPath.row]
        cell.textLabel?.text = String(describing: animalTitle)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "PlanetCell" { return }
        if let dest = segue.destination as? FactTableViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.planet = planets[(indexPath as NSIndexPath).row]
        }
    }

}
