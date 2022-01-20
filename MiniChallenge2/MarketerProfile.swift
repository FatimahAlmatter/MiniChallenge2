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
                Image(systemName: "star.fill")
                      
            }
        }
       
        
    }
}



struct MarketerProfile_Previews: PreviewProvider {
    static var previews: some View {
        MarketerProfile()
    }
}
