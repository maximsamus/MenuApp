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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        restaurantLabel.text = restaurant.title
        addressLabel.text = restaurant.adress
        phoneLabel.text = "Tel: \(restaurant.numberPhone)"
    }
}
