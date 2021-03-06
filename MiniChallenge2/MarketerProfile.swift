//
//  MarketerProfile.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct MarketerProfile: View {
    
    @EnvironmentObject var offers : OffersClass
    @State var id : Int
    
    var body: some View {
        ZStack{
            Color.accentColor.edgesIgnoringSafeArea(.all)
            Image("background")
                .resizable()
                .frame(width: 650, height: 650, alignment: .center)
                .padding(.bottom,1050)
            
            Image("background")
                .resizable()
                .frame(width: 650, height: 650, alignment: .center)
                .padding(.top,1050)
            
            ForEach(offers.marketer){ item in
                if item.id == id {
                    VStack(alignment: .center, spacing: 12){
                        Text(item.marketerName)
                            .font(Font.custom("SF Compact Rounded Medium", size: 20))
                            .padding(.bottom,-10)
                        Text(item.major)
                            .font(Font.custom("SF Compact Rounded Medium", size: 16))
                            .padding(.bottom,-8)
                        
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("Yellow"))
                                .padding([.bottom], 3.0)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("Yellow"))
                                .padding(.bottom, 3.0)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("Yellow"))
                                .padding(.bottom, 3.0)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("Yellow"))
                                .padding(.bottom, 3.0)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color("LightGrey"))
                                .padding(.bottom, 3.0)
                            
                        }
                        Divider()
                            .padding()
                        
                        VStack(alignment: .leading, spacing: 10){
                            HStack{
                                Text("Portfolio Link:")
                                    .font(Font.custom("SF Compact Rounded Medium", size: 16))
                                //   .padding(.leading, -63.0)
                                Link(destination: URL(string:"www.my-portfolio.com")!) {
                                    Text("www.my-portfolio.com")
                                        .font(Font.custom("SF Compact Rounded Medium", size: 16))
                                        .foregroundColor(Color("blue"))
                                        .underline()
                                }
                            }
                            
                            Text("Completed Projects: \(item.completedProjects)")
                                .font(Font.custom("SF Compact Rounded Medium", size: 16))
                            
                            Text("Skills: \(item.skills)")
                                .font(Font.custom("SF Compact Rounded Medium", size: 16))
                            
                        }
                    }
                    .frame(width: 356, height: 357)
                    .background(Color("CardsColor"))
                    .cornerRadius(12)
                    
            
            Image(item.marketerImage)
                .resizable()
                .frame(width: 130, height: 130)
                .aspectRatio(contentMode: .fill)
                .shadow(radius: 8)
                .padding(.bottom, 360)
            
                }//if
                
            }//ForEach
            
        }
        
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    
}


struct MarketerProfile_Previews: PreviewProvider {
    static var previews: some View {
        MarketerProfile(id: 1)
    }
}

