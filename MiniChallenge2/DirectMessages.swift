//
//  DirectMessages.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct DirectMessages: View {
    var body: some View {
        NavigationView{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 356.0, height: 81.0)
                    .foregroundColor(Color("CardsColor"))
                    
            HStack( spacing: 20){
                Image("img1")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                ZStack{
                    VStack(alignment: .leading, spacing: 5){
                        HStack{
                            Text("Abhoy Latif")
                                .font(.custom("SF Pro Rounded", size: 14))
                            
                                .fontWeight(.medium)
                                .foregroundColor(Color("LightGrey"))
                            
                            Spacer()
                            
                           
                        }
                        HStack {
                            Text("Massage")
                                .font(.custom("SF Pro Rounded", size: 12))
                            
                                .fontWeight(.medium)
                                .foregroundColor(Color("LightGrey"))
                            
                        }
                    }
                }
                Image(systemName: "1.circle.fill")
                    .resizable()
               
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("blue"))
                    
            }
            .frame(width: 330, height: 81)
            
           
            }
            
            
            .padding()
            .navigationTitle("Direct Massages")
            .navigationBarItems(trailing: Button(action: {}) {
                Image(systemName: "square.and.pencil")
            })
        }
    }
}

struct DirectMessages_Previews: PreviewProvider {
    static var previews: some View {
        DirectMessages()
    }
}
