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
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    @IBOutlet var fullDescriptionLabel: UILabel!
    
    var food: Food!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigImageView.image = UIImage(named: food.image)
        nameLabel.text = food.name
        caloriesLabel.text = "\(food.calories)ккал"
        priceLabel.text = "\(food.price)руб"
        fullDescriptionLabel.text = food.fullDescription
        
    }
}

