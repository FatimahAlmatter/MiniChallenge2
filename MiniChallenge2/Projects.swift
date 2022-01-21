//
//  Projects.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct Projects: View {
    
    @State var selected = 0
    
    //Define projectDetails for each card
    struct ProjectData : Hashable{
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
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    //Create Segmented Control
                    Picker(selection: $selected) {
                        Text("All").tag(0)
                        Text("Pending").tag(1)
                        Text("In Progress").tag(2)
                        Text("Done").tag(3)
                        
                    } label: {
                        Text("Projects")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                }
                
                if selected == 1 {
                    
                }
                
                //iterating over projects
                ForEach(projects, id: \.self) { project in
                    VStack(alignment: .leading, spacing: 10){
                        Text(project.projectTitle)
                            .font(Font.custom("SF Compact Rounded Medium", size: 20))
                            .foregroundColor(Color("DarkGrey"))
                        
                        Text(project.projectDate)
                            .foregroundColor(Color("LightGrey"))
                            .font(Font.custom("SF Compact Rounded Medium", size: 15))
                        
                        if project.status == "Pending" {
                            Text(project.status)
                                .font(Font.custom("SF Compact Rounded Medium", size: 11))
                                .foregroundColor(.white)
                                .frame(width: 66, height: 20)
                                .background(Color("Yellow"))
                                .cornerRadius(13)
                                .padding(.bottom,20)
                        } else if project.status == "In Progress" {
                            Text(project.status)
                                .font(Font.custom("SF Compact Rounded Medium", size: 11))
                                .foregroundColor(.white)
                                .frame(width: 66, height: 20)
                                .background(Color("blue"))
                                .cornerRadius(13)
                                .padding(.bottom,20)
                            
                        } else {
                            Text(project.status)
                                .font(Font.custom("SF Compact Rounded Medium", size: 11))
                                .foregroundColor(.white)
                                .frame(width: 66, height: 20)
                                .background(Color("Green"))
                                .cornerRadius(13)
                                .padding(.bottom,20)
                            
                        }
                        
                        
                        HStack(alignment: .center){
                            
                            
                            NavigationLink {
                                ProjectDetails()
                            } label: {
                                Text("View Details")
                                    .font(Font.custom("SF Compact Rounded Medium", size: 15))
                                    .foregroundColor(.white)
                                    .frame(width: 160, height: 40)
                                    .background(Color("AccentColor"))
                                    .cornerRadius(12)
                            }
                            
                            NavigationLink {
                                Offers()
                            } label: {
                                Text("Offers")
                                    .font(Font.custom("SF Compact Rounded Medium", size: 15))
                                    .foregroundColor(.white)
                                    .frame(width: 160, height: 40)
                                    .background(Color("AccentColor"))
                                    .cornerRadius(12)
                            }
                        }
                        
                    }
                    //card style
                    .frame(width: 356, height: 202)
                    .background(Color("CardsColor"))
                    .cornerRadius(12)
                }
                
            }
            .navigationTitle("Projects")
        }
        
        
        
    }
    
    
}




struct Projects_Previews: PreviewProvider {
    static var previews: some View {
        Projects()
            .preferredColorScheme(.light)
    }
}
