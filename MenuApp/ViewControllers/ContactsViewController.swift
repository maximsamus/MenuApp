//
//  ContactsViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 25.03.2022.
//

import UIKit

class ContactsViewController: UIViewController {
    
    @IBOutlet var mapImage: UIImageView!
    @IBOutlet var restaurantLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    private let restaurant = Restaurant.getContact()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.topItem?.title = "Контакты"
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "О Нас",
                                                                 style: .plain,
                                                                 target: self,
                                                                 action: #selector(teamInfoTapped))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapImage.image = UIImage(named: restaurant.map)
        restaurantLabel.text = restaurant.title
        addressLabel.text = restaurant.address
        phoneLabel.text = "Tel: \(restaurant.numberPhone)"
        setupBackgroundImage()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        navigationController?.navigationBar.topItem?.rightBarButtonItem = nil
    }
    
    @IBAction func teamInfoTapped() {
        performSegue(withIdentifier: "toTeamVC", sender: nil)
    }
}
