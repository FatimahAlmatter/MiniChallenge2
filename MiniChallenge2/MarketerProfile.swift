//
//  MarketerProfile.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct MarketerProfile: View {
    
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
            
            VStack(alignment: .center, spacing: 12){
                Text("Khaled Ali")
                    .font(Font.custom("SF Compact Rounded Medium", size: 20))
                    .padding(.bottom,-10)
                Text("Designer")
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
                    
                    Text("Completed Projects: 13")
                        .font(Font.custom("SF Compact Rounded Medium", size: 16))
                    
                    Text("Skills: video editing, photoshop, drawing")
                        .font(Font.custom("SF Compact Rounded Medium", size: 16))
                    
                }
            }
            .frame(width: 356, height: 357)
            .background(Color("CardsColor"))
            .cornerRadius(12)
            
            Image("img1")
                .resizable()
                .frame(width: 130, height: 130)
                .aspectRatio(contentMode: .fill)
                .shadow(radius: 8)
                .padding(.bottom, 360)
            
            
        }
        
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    
}


struct MarketerProfile_Previews: PreviewProvider {
    static var previews: some View {
        MarketerProfile()
    }
}

