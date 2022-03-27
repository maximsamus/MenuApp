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

        mapImage.image = UIImage(named: "image")
        restaurantLabel.text = restaurant.title
        addressLabel.text = restaurant.address
        phoneLabel.text = "Tel: \(restaurant.numberPhone)"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.topItem?.title = "NO!"
    }
}
