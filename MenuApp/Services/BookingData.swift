    //
    //  BookingData.swift
    //  MenuApp
    //
    //  Created by Paul Matar on 01.04.2022.
    //

class BookingData {
    static let shared = BookingData()
    
    var bookings: [Booking] = []
    
    private init() {}
}
