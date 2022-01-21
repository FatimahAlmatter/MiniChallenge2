//
//  ProjectDetails.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 20/01/2022.
//

import SwiftUI

struct ProjectDetails: View {
    @State  var textNameD: String = ""
    @State  var textDesD: String = ""
    @State  var textOtherD: String = ""
    @State  var textBudgetD: String = ""
    var body: some View {
        NavigationView{
            
            
            VStack(alignment: .leading){
                
            Text("Project Name")
                .fontWeight(.bold)
                .font(.system(size: 16))
                .foregroundColor(Color("LightGrey"))
                
            TextField("Enter project name ", text: $textNameD )
              
                
            
         Text("Project Description")
                .fontWeight(.bold)
                .font(.system(size: 16))
                .foregroundColor(Color("LightGrey"))
            TextField("Enter project description", text: $textDesD)
            
                  
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
            
            TextField(".. ", text: $textOtherD)
            
               Text("Upload Files")
                .fontWeight(.bold)
                .font(.system(size: 16))
                .foregroundColor(Color("LightGrey"))
            
           Text("Budget")
                .fontWeight(.bold)
                .font(.system(size: 16))
                .foregroundColor(Color("LightGrey"))
            
        TextField("1000 - 2000", text: $textBudgetD)
                    
                }
        }
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
    .navigationTitle("Project Details")
    .navigationBarTitleDisplayMode(.inline)
        }
    
    }
}


struct ProjectDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetails()
    }
}
