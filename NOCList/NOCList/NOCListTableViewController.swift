//
//  NOCListTableViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 5/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class NOCListTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    private var agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []
    
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNOCList()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agents.count
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(compromisedCount()) agents compromised"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoverNameCell", for: indexPath)
        
        let NOCagents = agents[indexPath.row]
        cell.textLabel?.text = NOCagents.coverName
        cell.detailTextLabel?.text = NOCagents.realName
        
        if NOCagents.compromised == true {
            cell.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        } else {
            cell.backgroundColor = .white
        }
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedIndexPath = tableView.indexPathForSelectedRow!
        let selectedGroceryItem = agents[selectedIndexPath.row]
        let groceryDetailVC = segue.destination as! AgentDetailViewController
        groceryDetailVC.newAgent = selectedGroceryItem
    }
    
    // MARK: - Private
    
    private func loadNOCList() {
        let ethanHunt = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true)
        let jimPhelps = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false)
        let clairePhelphs = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
        let eugeneKittridge = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
        let franzKrieger = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
        let lutherStickell = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
        let sarahDavies = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
        let maxRotGrab = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
        let hannahWilliams = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
        let jackHarmon = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
        let frankBarnes = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)

        agents.append(contentsOf: [ethanHunt, jimPhelps, clairePhelphs, eugeneKittridge, franzKrieger, lutherStickell, sarahDavies, maxRotGrab, hannahWilliams, jackHarmon, frankBarnes])
    }
    
    private func compromisedCount() -> Int {
        var count = 0
        for agent in agents {
            if agent.compromised == true {
                count += 1
            }
        }
        return count
    }
    
}
