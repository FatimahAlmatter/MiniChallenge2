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
                
                VStack(alignment: .leading){
                    Text("Ad for Sunglasses Store")
                        
                    
                }
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
