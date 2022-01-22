//
//  PostProject.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct PostProject: View {
    @State  var textName: String = ""
    @State  var textDes: String = ""
    @State  var textOther: String = ""
    @State  var textBudget: String = ""
    @State  var selectionDate: Date = Date()
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                VStack{
                    
                    
                    VStack(alignment: .leading){
                        
                        Text("Project Name")
                            .fontWeight(.bold)
                        
                        TextField("Enter project name ", text: $textName )
                        
                        Spacer()
                        
                        Text("Project Description")
                            .fontWeight(.bold)
                        
                        TextField("Enter project description", text: $textDes)
                        
                        Spacer()
                        
                        Group{
                            //
                            
                            DatePicker("Time", selection: $selectionDate)
                          
                                
                            
                              
                            
                            Text("Category\n") // drop-down lis
                                .fontWeight(.bold)
                                
                            
                            
                            Text("Others")
                                .fontWeight(.bold)
                                .font(.system(size: 16))
                            
                            
                            TextField(".. ", text: $textOther)
                        
                        
                        Text("Upload Files")
                            .fontWeight(.bold)
                       
                        
                        ZStack{
                            
                            TextField("Files", text: .constant(""))
                            
                        }
                        }
                        Text("Budget")
                            .fontWeight(.bold)
                    
                        
                        TextField("Ex : 1000 - 2000", text: $textBudget)
                        
                        
                    }
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 16))
                    .foregroundColor(Color("LightGrey"))
                    
                    Spacer()
                    
                    HStack{
                        
                        NavigationLink{
                            Projects()
                        }label: {
                            Text("Post")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            
                        } .frame(width: 160, height: 40)
                            .background(Color("AccentColor"))
                            .cornerRadius(12)
                        
                        
                        NavigationLink {
                            Projects()
                        } label: {
                            Text("Cancel")
                                .fontWeight(.medium)
                                .foregroundColor(Color("AccentColor"))
                            
                        }
                        .frame(width: 160, height: 40)
                        .background(Color.white)
                        .cornerRadius(12)
                        //// لسا بيتعدل
                        .border(Color("AccentColor"), width: 0.5)
                       

                        
                        
                    }
                                        
                }
            }
            .navigationTitle("Post Project")
            .navigationBarTitleDisplayMode(.inline)
        }
        }
    
}


struct PostProject_Previews: PreviewProvider {
    static var previews: some View {
        PostProject()
    }
}
