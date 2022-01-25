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
        var projectDescription: String
        var otherComments: String
        var projectBudget: String
        var time: String

    }
    
    //Define array from struct
    @Published var projects : [ProjectData] = [
        ProjectData(id: 1, projectTitle: "Ad for Sunglasses Store", projectDate: "Date Posted: 20/01/2022", status: "Pending", offerStatus: "Non", projectDescription: "I have a business for sunglasses and I want a video for showing them to customers", otherComments: "No  comments", projectBudget: "1000 - 2500", time: "20/02/2022")
        ,ProjectData(id: 2, projectTitle: "Online Service Ad", projectDate: "Date Posted: 10/01/2022", status: "In Progress", offerStatus: "Non", projectDescription: "We are an establishment for fabrication services and we want an attractive poster for this", otherComments: "", projectBudget: "500", time: "30/01/2022")
        ,ProjectData(id: 3, projectTitle: "Planners Project", projectDate: "Date Posted: 29/12/2021", status: "In Progress", offerStatus: "Non", projectDescription: "I am a freelancer. I have an online store for selling planners. and I want a creative marketer who can help me design a new planner for 2022", otherComments: "", projectBudget: "2000 - 5000", time: "20/01/2022")
        ,ProjectData(id: 4, projectTitle: "Ad for Perfume", projectDate: "Date Posted: 17/09/2021", status: "Done", offerStatus: "Non", projectDescription: "I want a creative video to advertise my perfumes", otherComments: "Perfume", projectBudget: "10,000", time: "01/01/2022")
        ,ProjectData(id: 5, projectTitle: "Candels Ad", projectDate: "Date Posted: 15/09/2021", status: "In Progress", offerStatus: "Non", projectDescription: "I want a creative marketer who can design a creative Logo for my business. I want a logo that suitable for candels", otherComments: "Candels", projectBudget: "250", time: "22/01/2022")
        ,ProjectData(id: 6, projectTitle: "Ad for a Service", projectDate: "Date Posted: 09/09/2021", status: "Done", offerStatus: "Non", projectDescription: "I want a poster for social media posts to advertising for a Home massage service", otherComments: "", projectBudget: "500 - 900", time: "09/11/2021")
    ]
    
}
