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
        
        init(id : Int, marketerName: String, priceoffers: String, timeoffers: String, marketerImage: String, projectID: Int, offerStatus: String, marketerID : Int)  {
            self.id = id
            self.marketerName = marketerName
            self.priceoffers = priceoffers
            self.timeoffers = timeoffers
            self.marketerImage = marketerImage
            self.projectID = projectID
            self.offerStatus = offerStatus
            self.marketerID = marketerID
            
        }
        
        func updateOffer() -> offers{
            return offers(id: id, marketerName: marketerName, priceoffers: priceoffers, timeoffers: timeoffers, marketerImage: marketerImage, projectID: projectID, offerStatus: "Accepted", marketerID: marketerID)
            
        }
        
    }
    
   
    
    struct marketer: Hashable, Identifiable {
        var id: Int
        var marketerImage: String
        var marketerName: String
        var major: String
        var completedProjects: Int
        var skills: String
    }
    
    //Define array from struct
    @Published var offer : [offers] = [
        offers(id: 1, marketerName: "Khaled Ali", priceoffers: "100$", timeoffers: "2 Weeks", marketerImage: "marketer1", projectID: 1, offerStatus: "Accepted", marketerID: 1),
        offers(id: 2, marketerName: "Nora faisal", priceoffers: "236$", timeoffers: "1 months", marketerImage: "marketer2", projectID: 1, offerStatus: "Non", marketerID: 2),
        offers(id: 3, marketerName: "Sara", priceoffers: "125$", timeoffers: "2 months", marketerImage: "marketer3", projectID: 2, offerStatus: "Non", marketerID: 3),
        offers(id: 4, marketerName: "Fahad Bader", priceoffers: "500$", timeoffers: "4 Days", marketerImage: "img2", projectID: 3, offerStatus: "Non", marketerID: 4)
    ]
    
    @Published var marketer : [marketer] = [
        marketer(id: 1, marketerImage: "marketer1", marketerName: "Khaled Ali", major: "Editor", completedProjects: 10, skills: "video and photo editing"),
        marketer(id: 2, marketerImage: "marketer2", marketerName: "Nora faisal", major: "Designer", completedProjects: 9, skills: "video editing, photoshop, drawing"),
        marketer(id: 3, marketerImage: "marketer3", marketerName: "Sara", major: "Designer, Photographer", completedProjects: 7, skills: "photoshop"),
        marketer(id: 4, marketerImage: "img2", marketerName: "Fahad Bader", major: "Photographer", completedProjects: 11, skills: "video editing, photoshop")]
    
    
    func deleteOffer(element: offers){
        offer = offer.filter(){ $0 != element }
        
    }
    
    func update(item: offers){
        if let index = offer.firstIndex(where: { $0.id == item.id }) {
            offer[index] = item.updateOffer()
        }
    }
    
  
    
}
