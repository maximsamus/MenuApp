//
//  SignUpViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 30.03.2022.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var firstNameTF: UITextField!
    @IBOutlet var lastNameTF: UITextField!
    @IBOutlet var emailTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
        
    @IBAction func savePressed() {
        guard emailTF.text != "", passwordTF.text != "" else {
            showAlert(title: "Error", message: "Please enter email and password!")
            return
        }
        
        UserData.shared.add(user: User(firstName: firstNameTF.text,
                                lastName: lastNameTF.text,
                                email: emailTF.text!,
                                password: passwordTF.text!))
        dismiss(animated: true)
    }
}


// MARK: - Alert Controller
extension SignUpViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension SignUpViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case firstNameTF:
            lastNameTF.becomeFirstResponder()
        case lastNameTF:
            emailTF.becomeFirstResponder()
        case emailTF:
            passwordTF.becomeFirstResponder()
        default:
            savePressed()
        }
        return true
    }
    
}
