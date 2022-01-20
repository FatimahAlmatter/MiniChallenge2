//
//  ProjectDetails.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct ProjectDetails: View {
    @State var allProjects = 0
    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack{
                    //Create Segmented Control
                    Picker(selection: $allProjects) {
                        Text("All").tag(0)
                        Text("Recent").tag(1)
                        
                    } label: {
                        Text("Projects")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                .padding()
                ZStack{
                    VStack{
                        
                        HStack{
                            Image("marketer1")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            
                            Text("AbhoyLatif")
                                .font(.custom("SF Pro Rounded", size: 14))
                                .fontWeight(.medium)
                            
                        }
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("Yellow"))
                                .padding([.leading, .bottom], 172.0)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("Yellow"))
                                .padding(.bottom, 172.0)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("Yellow"))
                                .padding(.bottom, 172.0)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("Yellow"))
                                .padding(.bottom, 172.0)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("LightGrey"))
                                .padding(.bottom, 172.0)
                            
                            
                        }
                        
                        
                    }
                    
                }
                .navigationTitle("offers")
                
            }
        }
        
    }
}

struct ProjectDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetails()
    }
}

