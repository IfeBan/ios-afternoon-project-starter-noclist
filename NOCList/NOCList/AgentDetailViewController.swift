//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Lambda_School_Loaner_101 on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var accessLevelLabel: UILabel!
    
    var newAgent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = newAgent.coverName
        coverNameLabel.text = newAgent.coverName
        realNameLabel.text = newAgent.realName
        accessLevelLabel.text = "\(newAgent.accessLevel) level"
        
        if newAgent.compromised == true {
            view.backgroundColor = .red
        }
    }
}
