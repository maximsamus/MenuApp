//
//  DetailViewController.swift
//  MenuApp
//
//  Created by Максим Самусь on 25.03.2022.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var bigImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var caloriesLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    @IBOutlet var fullDescriptionLabel: UILabel!
    
    var menu: [Menu]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

