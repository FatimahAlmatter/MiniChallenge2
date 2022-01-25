//
//  OffersClass.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 25/01/2022.
//

import Foundation
import SwiftUI

class OffersClass : ObservableObject{
    
    struct offers :  Hashable, Identifiable {
        var id : Int
        var marketerName: String
        var priceoffers: String
        var timeoffers: String
        var marketerImage: String
        var projectID: Int
        var offerStatus: String
        var marketerID : Int
        
    }
    
    //Define array from struct
    @Published var offer : [offers] = [
        offers(id: 1, marketerName: "Khaled Ali", priceoffers: "100$", timeoffers: "2 Weeks", marketerImage: "marketer1", projectID: 1, offerStatus: "Accepted", marketerID: 1),
        offers(id: 2, marketerName: "Nora faisal", priceoffers: "236$", timeoffers: "1 months", marketerImage: "marketer2", projectID: 1, offerStatus: "Non", marketerID: 2),
        offers(id: 3, marketerName: "Nout Golstein", priceoffers: "125$", timeoffers: "2 months", marketerImage: "marketer3", projectID: 2, offerStatus: "Non", marketerID: 3),
        offers(id: 4, marketerName: "Fahad Bader", priceoffers: "500$", timeoffers: "4 Days", marketerImage: "marketer3", projectID: 3, offerStatus: "Non", marketerID: 4)
    ]
    
}
