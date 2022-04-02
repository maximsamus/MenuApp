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
    
    var user: User!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.topItem?.title = "Профиль"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bookingVC = segue.destination as? BookingViewController else { return}
        bookingVC.user = user
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func signInPressed() {
        guard let email = usernameTF.text, let password = passwordTF.text else { return }
        
        user = User(email: email, password: password)
        
        if user.checkPassword(of: user) {
            user.getUser(&user)
            performSegue(withIdentifier: "toBookingVC", sender: nil)
        } else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTF)
        }
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
