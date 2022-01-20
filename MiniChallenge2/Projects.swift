//
//  Projects.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct Projects: View {
    @State var allProjects = 0
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    //Create Segmented Control
                    Picker(selection: $allProjects) {
                        Text("All").tag(0)
                        Text("Pending").tag(1)
                        Text("In Progress").tag(2)
                        Text("Done").tag(3)
                        
                    } label: {
                        Text("Projects")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Ad for Sunglasses Store")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DarkGrey"))
                    Text("Date Posted: 20/01/2022")
                        .fontWeight(.medium)
                        .foregroundColor(Color("LightGrey"))
                    Text("Pending")
                        .font(.custom("SF Pro Rounded", size: 11))
                        .foregroundColor(.white)
                        .frame(width: 66, height: 20)
                        .background(Color("Yellow"))
                        .cornerRadius(13)
                    
                    
                }
                //card style
                .frame(width: 356, height: 202)
                .background(Color("CardsColor"))
                .cornerRadius(12)
                
                
            }
            .navigationTitle("Projects")
        }
    }
}

struct Projects_Previews: PreviewProvider {
    static var previews: some View {
        Projects()
    }
}
