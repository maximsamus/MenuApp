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
    
    weak var delegate: SignUpVCDelegate?
    
    override func viewDidLoad() {
        setupBackgroundImage()
    }
    
    @IBAction func saveButtonPressed() {
        guard !emailTF.isEmpty, !passwordTF.isEmpty else {
            showAlert(
                title: "Не все поля заполнены!",
                message: "Пожалуйста укажите email и пароль!"
            )
            return
        }
        guard let email = emailTF.text, let password = passwordTF.text else { return }
        
        let newUser = User(
            firstName: firstNameTF.text,
            lastName: lastNameTF.text,
            email: email,
            password: password
        )
        if !newUser.checkUser(newUser) {
            newUser.add(user: newUser)
        } else {
            showAlert(
                title: "Ошибка!",
                message: "Данный email уже используется!"
            )
            return
        }
        delegate?.setEmail(with: newUser)
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
