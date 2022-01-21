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
    
    var body: some View {
        
            NavigationView{
                
            ScrollView{
                
            VStack{
                
                
                VStack(alignment: .leading){
                    
                Text("Project Name")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .foregroundColor(Color("LightGrey"))
                    
                TextField("Enter project name ", text: $textName )
                  
                    
                
             Text("Project Description")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .foregroundColor(Color("LightGrey"))
                TextField("Enter project description", text: $textDes)
                
                      
             Text("Time\n") // calander tab
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .foregroundColor(Color("LightGrey"))
                
              Text("Category\n") // drop-down lis
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .foregroundColor(Color("LightGrey"))
                    
                
                    Group{
                        
               Text("Others")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .foregroundColor(Color("LightGrey"))
                
                TextField(".. ", text: $textOther)
                
                   Text("Upload Files")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .foregroundColor(Color("LightGrey"))
                
               Text("Budget")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .foregroundColor(Color("LightGrey"))
                
            TextField("1000 - 2000", text: $textBudget)
                        
                    }
            }
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                Spacer()
                
                HStack{
            
                    Button(action: {}) {
                            Text("Post")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                 
                    } .frame(width: 160, height: 40)
                        .background(Color("AccentColor"))
                        .cornerRadius(12)
                
                    
                    Button(action: {} ) {
                        Text("Cancel")
                            .fontWeight(.medium)
                            .foregroundColor(Color("AccentColor"))
                    }
                    .frame(width: 160, height: 40)
                        .background(Color.white)
                        .cornerRadius(12)
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
