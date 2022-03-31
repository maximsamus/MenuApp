//
//  LoginViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 30.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.topItem?.title = "Логин"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInPressed() {
        guard !UserData.shared.users.isEmpty else {
            showAlert(title: "Error",
                      message: "No users found",
                      textField: passwordTF)
            return
        }
        
        UserData.shared.users.forEach { user in
            if usernameTF.text == user.email && passwordTF.text == user.password {
                print(UserData.shared.users)
                performSegue(withIdentifier: "toBookingVC", sender: nil)
            } else {
                showAlert(title: "Invalid login or password",
                          message: "Please, enter correct login and password",
                          textField: passwordTF)
            }
        }
    }
}

// MARK: - Alert Controller
extension UIViewController {
    func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case usernameTF:
            passwordTF.becomeFirstResponder()
        default:
            signInPressed()
        }
        return true
    }
}
