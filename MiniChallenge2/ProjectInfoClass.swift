//
//  ProjectInfoClass.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 25/01/2022.
//

import Foundation

class ProjectInfoClass : ObservableObject{

    //Define projectDetails for each card
    struct ProjectData : Hashable, Identifiable{
        var id : Int
        var projectTitle: String
        var projectDate: String
        var status: String
        var offerStatus : String

    }
    
    //Define array from struct
    @Published var projects : [ProjectData] = [
        ProjectData(id: 1, projectTitle: "Ad for Sunglasses Store", projectDate: "Date Posted: 20/01/2022", status: "Pending", offerStatus: "Non")
        ,ProjectData(id: 2, projectTitle: "Online Service Ad", projectDate: "Date Posted: 10/1/2022", status: "In Progress", offerStatus: "Non")
        ,ProjectData(id: 3, projectTitle: "Planners Project", projectDate: "Date Posted: 29/12/2021", status: "In Progress", offerStatus: "Non")
        ,ProjectData(id: 4, projectTitle: "Ad for Perfume", projectDate: "Date Posted: 17/09/2021", status: "Done", offerStatus: "Non")
        ,ProjectData(id: 5, projectTitle: "Candels Ad", projectDate: "Date Posted: 15/09/2021", status: "In Progress", offerStatus: "Non")
        ,ProjectData(id: 6, projectTitle: "Ad for a Service", projectDate: "Date Posted: 09/09/2021", status: "Done", offerStatus: "Non")
    ]
    
}
