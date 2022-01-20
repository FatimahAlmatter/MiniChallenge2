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
            Rectangle()
                .fill(Color.white)
                .padding(.leading, -16.0)
            
                .frame(width: 356, height: 357)
            VStack{
                Image( "Bac")
                    .padding()
                
                Text("Benedikt Safiyulin")
                    .font(.custom("SF Pro Rounded", size: 20))
                    .fontWeight(.medium)
                Text("Marketer Major")
                    .font(.custom("SF Pro Rounded", size: 14))
                    .fontWeight(.medium)
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
                    .padding(.bottom, -33.0)
                
                HStack{
                    
                    Text("Portfolio Link:")
                        .font(.custom("SF Pro Rounded", size: 16))
                        .fontWeight(.medium)
                        .padding(.leading, -100.0)
                    Link(destination: URL(string:"www.my-portfolio.com")!) {
                        Text("www.my-portfolio.com")
                            .font(.custom("SF Pro Rounded", size: 16))
                            .fontWeight(.medium)
                            .foregroundColor(Color("blue"))
                        
                            .underline()
                        
                    }
                    
                    
                    
                }
                Text("Completed Projects: 13")
                    .font(.custom("SF Pro Rounded", size: 16))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, -183.0)
                
                Text("Skills: video editing, photoshop, drawing")
                    .font(.custom("SF Pro Rounded", size: 16))
                    .padding(.leading, -84.0)
            }
            
            
            //            .padding(.horizontal, 21.0)
            
        }
    }
    
    
}
struct MarketerProfile_Previews: PreviewProvider {
    static var previews: some View {
        MarketerProfile()
            .padding(.leading)
    }
}

