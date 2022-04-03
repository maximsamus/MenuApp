//
//  BookingViewController.swift
//  MenuApp
//
//  Created by Paul Matar on 30.03.2022.
//

import UIKit

class BookingViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet var guestsTF: UITextField!
    @IBOutlet var phoneNumberTF: UITextField!
    
    var user: User!
    private var date: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        date = datePicker.date.formatted()
        navigationItem.hidesBackButton = true
        setupBackgroundImage()
    }

    @IBAction func datePickerAction() {
        date = datePicker.date.formatted()
    }
    
    @IBAction func bookButtonPressed() {
        guard let date = date, !phoneNumberTF.isEmpty, !guestsTF.isEmpty else {
            showAlert(
                title: "Не все поля заполнены!",
                message: "Пожалуйста заполните все поля и выберите дату брони!"
            )
            return
        }
        let booking = Booking(
            user: user,
            phoneNumber: phoneNumberTF.text ?? "",
            guestsNumber: guestsTF.text ?? "",
            date: date
        )
        booking.add(booking: booking)
        
        showAlert(
            title: "\(booking.user.firstName ?? "")",
            message: "Столик на \(booking.guestsNumber) чел. забронирован на \(booking.date)"
        )
    }
}


