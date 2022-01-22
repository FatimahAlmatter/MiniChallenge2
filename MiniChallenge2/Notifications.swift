//
//  Nofifications.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct Notifications: View {
    
    var body: some View {
        NavigationView{
            ScrollView{
                notification(title: "New offer proposed for Ad for Sunglasses Store")
                notification(title: "New offer proposed for Online Service Ad")
                notification(title: "Ad for Perfume status changed to Done")
                
            }
            .navigationTitle("Notifications")
            .toolbar(content: {
                Text("Clear All")
                    .foregroundColor(Color.accentColor)
            })
            
        }
    }
    func notification(title:String) -> some View{
        return HStack{
            Text(title)
                .font(.custom("SF Compact Rounded Medium", size: 17))
                .foregroundColor(Color("DarkGrey"))
                .lineLimit(nil)
            
            Spacer()
            Image(systemName: "multiply.circle.fill")
                .foregroundColor(Color.accentColor)
                .padding(.bottom,25)
        }
        .padding()
        .frame(width: 356, alignment: .leading)
        .background(Color("CardsColor"))
        .cornerRadius(12)
    }
}

struct Nofifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
