//
//  Extension + UITableViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 03.04.2022.
//

import UIKit

extension UITableViewController {
    func setupBGImageForTablewView() {
        tableView.backgroundView = UIImageView(image: UIImage(named: "view"))
//        tableView.backgroundView?.isOpaque = false
        tableView.backgroundView?.frame(forAlignmentRect: UIScreen.main.bounds)
        tableView.backgroundView?.contentMode = .scaleAspectFill
        tableView.backgroundView?.alpha = 0.2
    }
}
