//
//  MenuTableViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 25.03.2022.
//

import UIKit

class MenuTableViewController: UITableViewController {
    private let menu = Menu.getMenu()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        setupBackgroundImageTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.topItem?.title = "Меню"
        tabBarController?.tabBar.tintColor = UIColor.orange
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        detailVC.food = sender as? Food
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return menu.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        menu[section].category.rawValue
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu[section].food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menu", for: indexPath)
        let food = menu[indexPath.section].food[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.shortDescription
        content.image = UIImage(named: food.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        cell.backgroundColor = .clear
        return cell
    }
}

// MARK: - UITableViewDelegate

extension MenuTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let food = menu[indexPath.section].food[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: food)
    }
}
