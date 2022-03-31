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
    
    @IBAction func saveButtonPressed() {
        guard emailTF.text != "", passwordTF.text != "" else {
            showAlert(title: "Error", message: "Please enter email and password!")
            return
        }
        
        for user in UserData.shared.users {
            guard user.email != emailTF.text else {
                showAlert(title: "Error", message: "This email is already used!")
                return
            }
        }
        
        UserData.shared.add(user: User(firstName: firstNameTF.text,
                                       lastName: lastNameTF.text,
                                       email: emailTF.text!,
                                       password: passwordTF.text!))
        dismiss(animated: true)
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
            saveButtonPressed()
        }
        return true
    }
    
}
