//
//  Projects.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct Projects: View {
    
    var projectClass = ProjectInfoClass()
    @State var selected = 0
    
    
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
                
                if selected == 0 {
                    //iterating over projects
                    ForEach(projectClass.projects) { project in
                        cardStyle(title: project.projectTitle, date: project.projectDate, status: project.status)
                    }
                    
                } else if selected == 1 {
                    ForEach(projectClass.projects) { item in
                        if item.status == "Pending"{
                            cardStyle(title: item.projectTitle, date: item.projectDate, status: item.status)
                        }
                    }
                } else if selected == 2 {
                    ForEach(projectClass.projects) { item in
                        if item.status == "In Progress"{
                            cardStyle(title: item.projectTitle, date: item.projectDate, status: item.status)
                        }
                    }
                    
                } else {
                    ForEach(projectClass.projects) { item in
                        if item.status == "Done"{
                            cardStyle(title: item.projectTitle, date: item.projectDate, status: item.status)
                        }
                    }
                }
            }
            .navigationTitle("Projects")
        }
    }
    
    
    func statusStyle(status: String,color: String) -> some View {
        return Text(status)
            .font(Font.custom("SF Compact Rounded Medium", size: 11))
            .foregroundColor(.white)
            .frame(width: 66, height: 20)
            .background(Color(color))
            .cornerRadius(13)
            .padding(.bottom,20)
    }
    
    func cardStyle(title: String, date: String, status: String) -> some View {
        VStack(alignment: .leading, spacing: 10){
            Text(title)
                .font(Font.custom("SF Compact Rounded Medium", size: 20))
                .foregroundColor(Color("DarkGrey"))
            
            Text(date)
                .foregroundColor(Color("LightGrey"))
                .font(Font.custom("SF Compact Rounded Medium", size: 15))
            
            if status == "Pending" {
                statusStyle(status: status, color: "Yellow")
                
            } else if status == "In Progress" {
                statusStyle(status: status, color: "blue")
                
            } else {
                statusStyle(status: status, color: "Green")
                
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



struct Projects_Previews: PreviewProvider {
    static var previews: some View {
        Projects()
            .preferredColorScheme(.light)
    }
}
