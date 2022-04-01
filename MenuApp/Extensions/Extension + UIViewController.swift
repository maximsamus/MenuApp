//
//  Extension + UIViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 01.04.2022.
//

import UIKit

// MARK: - Alert Controller
extension UIViewController {
    func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
