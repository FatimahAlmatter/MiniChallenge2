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
    @State  var selectionDateD: Date = Date()
    //// for menu
    @State var value = ""
    var placeholder = "Select Option"
    var dropDownList = ["Article","Video","Social Media Post","Other"]

  
    var body: some View {
        
        NavigationView{
            
            VStack(alignment: .leading){
                
            Text("Project Name")
                .fontWeight(.bold)  
                
            TextField("Enter project name ", text: $textNameD )
 
         Text("Project Description")
                .fontWeight(.bold)
                
            TextField("Enter project description", text: $textDesD)
            
                  
                DatePicker("Time", selection: $selectionDateD)
                    .font(.headline)

            
          Text("Category\n") // drop-down lis
                .fontWeight(.bold)
                
                Menu {
                    ForEach(dropDownList, id: \.self)
                    { select in
                                 Button(select) {
                                     self.value = select
                                 }
                    }
                            
                     } label: {
                         VStack(spacing: 5){
                                         HStack{
                                Text(value.isEmpty ? placeholder : value)
                                   .foregroundColor(value.isEmpty ? .gray : .black)
                                    Spacer()
                                    Image(systemName: "chevron.down")
                                    .foregroundColor(Color("AccentColor"))
                                   .font(Font.system(size: 20, weight: .bold))
                                         }
                                         .padding(.horizontal)
                                         Rectangle()
                                             .fill(Color.orange)
                                             .frame(height: 2)
                                     }
                     }

            
                Group{
                    
           Text("Others")
                .fontWeight(.bold)

            
            TextField(".. ", text: $textOtherD)
            
               Text("Upload Files")
                .fontWeight(.bold)
                    
                    ZStack{
                        
                        TextField("Files", text: .constant(""))
                        
                    }
            
           Text("Budget")
                .fontWeight(.bold)

            
        TextField("1000 - 2000", text: $textBudgetD)
                    
                }
        }
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .font(.system(size: 16))
            .foregroundColor(Color("LightGrey"))
            
            
            
    .navigationTitle("Project Details")
    .navigationBarTitleDisplayMode(.inline) 
    .toolbar(content: {
        Text("Save")
            .foregroundColor(Color.accentColor)
    })
        }
    
    }
}


struct ProjectDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetails()
    }
}
