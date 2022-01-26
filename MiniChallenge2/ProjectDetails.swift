//
//  ProjectDetails.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 20/01/2022.
//

import SwiftUI

struct ProjectDetails: View {
    @EnvironmentObject var projects : ProjectInfoClass
    
    @State  var textNameD: String = ""
    @State  var textDesD: String = ""
    @State  var textOtherD: String = ""
    @State  var textBudgetD: String = ""
    @State  var selectionDateD: Date = Date()
    //// for menu
    @State var value = ""
    @State var id : Int
    
    var placeholder = "Select Option"
    var dropDownList = ["Article","Video","Social Media Post","Other"]
    
    
    var body: some View {
        ScrollView{
            ForEach(projects.projects) { item in
                if item.id == id {
                    VStack(alignment: .leading , spacing: 15){
                        Text("Project Name")
                            .fontWeight(.bold)
                        
                        TextField(item.projectTitle, text: $textNameD )
                        
                        Text("Project Description")
                            .fontWeight(.bold)
                        
                        TextField(item.projectDescription, text: $textDesD)

                        DatePicker("Time", selection: $selectionDateD)
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
                        
                        Group{
                            
                            Text("Others")
                                .fontWeight(.bold)
                            
                            TextField(item.otherComments, text: $textOtherD)
                            
                            Text("Attachments")
                                .fontWeight(.bold)
                            
                            HStack{
                                
                                TextField("Upload Files", text: .constant(""))
                                Image(systemName: "paperclip")
                                    .foregroundColor(Color.blue)
                                    .font(Font.system(size: 20, weight: .medium))
                                
                            }
                            
                            Text("Budget")
                                .fontWeight(.bold)
                            
                            
                            TextField(item.projectBudget, text: $textBudgetD)
                            
                        }
                    }
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(Font.custom("SF Compact Rounded Medium", size: 16))
                    .foregroundColor(Color("DarkGrey"))
                }
            }
            
            
            
            
        }
        .navigationTitle("Project Details")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            Text("Save")
                .foregroundColor(Color.accentColor)
        })
        
        
    }
}


struct ProjectDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetails(id: 1)
    }
}
