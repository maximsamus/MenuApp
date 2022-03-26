//
//  ContactsViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 25.03.2022.
//

import UIKit

class ContactsViewController: UIViewController {
    
    var restaurant: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = restaurant.title
        adressLadel.text = restaurant.adress
        phoneNumberLabel.text = "Tel: \(restaurant.numberPhone)"
    }
}
