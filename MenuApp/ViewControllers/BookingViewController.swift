//
//  BookingViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 30.03.2022.
//

import UIKit

class BookingViewController: UIViewController {
    
    @IBOutlet var guestsTF: UITextField!
    @IBOutlet var phoneNumberTF: UITextField!
    
    var user: User!
    private var date: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        date = formatter.string(from: sender.date)
    }
    
    @IBAction func bookButtonPressed() {
        guard phoneNumberTF.text != "", guestsTF.text != "" else {
            showAlert(title: "Не все поля заполнены!",
                      message: "Пожалуйста укажите номер телефона и количество гостей!")
            return
        }
        
        guard date != nil else {
            showAlert(title: "Не выбрана дата!",
                      message: "Пожалуйста выберите дату!")
            return
        }
        
        let booking = Booking(user: user,
                              phoneNumber: phoneNumberTF.text!,
                              guestsNumber: guestsTF.text!,
                              date: date)
        BookingData.shared.bookings.append(booking)
    }
}


