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
        var id = UUID()
        var projectTitle: String
        var projectDate: String
        var status: String
    }
    
    //Define array from struct
    var projects : [ProjectData] = [
        ProjectData(projectTitle: "Ad for Sunglasses Store", projectDate: "Date Posted: 20/01/2022", status: "Pending")
        ,ProjectData(projectTitle: "Online Service Ad", projectDate: "Date Posted: 10/1/2022", status: "In Progress")
        ,ProjectData(projectTitle: "Planners Project", projectDate: "Date Posted: 29/12/2021", status: "In Progress")
        ,ProjectData(projectTitle: "Ad for Perfume", projectDate: "Date Posted: 17/09/2021", status: "Done")
        ,ProjectData(projectTitle: "Candels Ad", projectDate: "Date Posted: 15/09/2021", status: "In Progress")
        ,ProjectData(projectTitle: "Ad for a Service", projectDate: "Date Posted: 09/09/2021", status: "Done")
    ]
    
}
