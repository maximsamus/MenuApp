//
//  TeamTableViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 26.03.2022.
//

import UIKit

class TeamTableViewController: UITableViewController {
    
    private let team = Developer.getTeam()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
    }
    
    // MARK: - Table view data source
    
        override func numberOfSections(in tableView: UITableView) -> Int {
            return team.count
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        team[section].position.rawValue
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "team", for: indexPath)
        
        let developer = team[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        content.text = developer.fullname
        content.secondaryText = developer.contacts
        cell.contentConfiguration = content
        return cell
    }
}
