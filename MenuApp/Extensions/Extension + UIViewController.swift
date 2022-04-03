    //
    //  Extension + UIViewController.swift
    //  MenuApp
    //
    //  Created by Paul Matar on 01.04.2022.
    //

import UIKit

extension UIViewController {
    func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    func setupBackgroundImage() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.alpha = 0.2
        backgroundImage.image = UIImage(named: "view")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
    }
}
