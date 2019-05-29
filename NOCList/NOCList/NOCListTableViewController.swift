//
//  NOCListTableViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 5/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

//here is a comment 

class NOCListTableViewController: UITableViewController
{
    // MARK: - Properties
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    // MARK: - Private
}
