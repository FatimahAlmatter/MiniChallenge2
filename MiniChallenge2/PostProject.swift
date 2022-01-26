//
//  PostProject.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct PostProject: View {
    @EnvironmentObject var projects : ProjectInfoClass
    
    @State  var textName: String = ""
    @State  var textDes: String = ""
    @State  var textOther: String = ""
    @State  var textBudget: String = ""
    @State  var selectionDate = Date()
    
//    @State var showProjectScreen = false
//    @State var cancelState = false
    
    // for menu
    @State var value = ""
    var placeholder = "Select Option"
    var dropDownList = ["Article","Video","Social Media Post","Other"]
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    VStack(alignment: .leading , spacing: 15 ){
                        Text("Project Name")
                            .fontWeight(.bold)
                        
                        TextField("Enter project name", text: $textName )
                        
                        Text("Project Description")
                            .fontWeight(.bold)
                        
                        TextField("Enter project description", text: $textDes)
                        
                        Group{
                            DatePicker("Time", selection: $selectionDate)
                                .font(.headline)
                            
                            VStack(alignment: .leading, spacing:10){
                                Text("Category")
                                    .fontWeight(.bold)
                                
                                Menu {
                                    ForEach(dropDownList, id: \.self)
                                    { select in
                                        Button(select) {
                                            self.value = select
                                        }
                                    }
                                    
                                } label: {
                                    VStack(alignment:.leading ,spacing: 5){
                                        HStack{
                                            Text(value.isEmpty ? placeholder : value)
                                                .foregroundColor(value.isEmpty ? .gray : Color("LightGrey"))
                                            Spacer()
                                            Image(systemName: "chevron.down")
                                                .foregroundColor(Color("AccentColor"))
                                                .font(Font.system(size: 20, weight: .medium))
                                        }
                                        .padding(.horizontal)
                                        Rectangle()
                                            .fill(Color.orange)
                                            .frame(height: 2)
                                    }
                                }
                                
                            }
                            Text("Others")
                                .fontWeight(.bold)
                                .font(.system(size: 16))
                            
                        }
                        TextField("other catagory", text: $textOther)
                        
                        Text("Upload Files")
                            .fontWeight(.bold)
                        HStack{
                            
                            TextField("Files", text: .constant(""))
                            Image(systemName: "paperclip")
                                .foregroundColor(Color.blue)
                                .font(Font.system(size: 20, weight: .medium))
                        }
                        Text("Budget")
                            .fontWeight(.bold)
                        
                        TextField("Ex : 1000 - 2000", text: $textBudget)
                        
                    }
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(Font.custom("SF Compact Rounded Medium", size: 16))
                    .foregroundColor(Color("DarkGrey"))
                    
                    HStack{
                        Button {
                            let date = Date.now.formatted(date: .numeric, time: .omitted)
                            let time = Date.now.formatted(date: .omitted, time: .shortened)
                            postProject(name: textName, date: date, description: textDes, comments: textOther, budget: textBudget, time: time)
                            textName = ""
                            textOther = ""
                            textBudget = ""
                            textDes = ""
                            print(projects.projects)
                        } label: {
                            Text("Post")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            
                        } .frame(width: 160, height: 40)
                            .background(Color("AccentColor"))
                            .cornerRadius(12)
                        
                        Spacer()
                        
                        NavigationLink {
                            Projects()
                        } label: {
                            Text("Cancel")
                                .fontWeight(.medium)
                                .foregroundColor(Color("AccentColor"))
                            
                        }
                        .frame(width: 160, height: 40)
                        .background(Color.white)
                        .overlay(RoundedRectangle(cornerRadius :12)
                                    .stroke(Color("AccentColor")))
                        
                    }
                    .padding(25)
                    
                }
            }
            .navigationTitle("Post Project")
        }
        
    }
    
    
    func postProject(name: String, date: String, description: String, comments: String, budget: String, time: String){
        let id = projects.projects.count + 1
        let post = ProjectInfoClass.ProjectData(id: id, projectTitle: name, projectDate: date, status: "Pending", offerStatus: "Non", projectDescription: description, otherComments: comments, projectBudget: budget, time: time)
        // add to begin
        projects.projects.insert(post, at: 0)
        // projects.projects.append(post)
        //print(projects.projects)
        
    }
    
}



struct PostProject_Previews: PreviewProvider {
    static var previews: some View {
        PostProject()
    }
}
