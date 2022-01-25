//
//  DirectMessages.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct DirectMessages: View {
    
    //Define message details
    struct MessageDetails : Hashable{
        var marketerName: String
        var message: String
        var image: String
        var unreadMsg: String
    }
    
    //Define array from struct
    var messages: [MessageDetails] = [
        MessageDetails(marketerName: "Abhoy Latif", message: "and what is your Offer?", image: "img1", unreadMsg: "1")
        ,MessageDetails(marketerName: "Abbie Wilson", message: "how much will pay?", image: "img2", unreadMsg: "0")
        ,MessageDetails(marketerName: "Abayo Stevens", message: "can you extend submission date?", image: "img3", unreadMsg: "0")
        ,MessageDetails(marketerName: "Aasiya Jayavant", message: "thank you", image: "Group 5", unreadMsg: "0")
        ,MessageDetails(marketerName: "Aaron Almaraz", message: "thank you", image: "img5", unreadMsg: "0")]
    
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(messages, id: \.self) { chat in
                    HStack(spacing: 20){
                        Image(chat.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 5){
                            Text(chat.marketerName)
                                .font(.custom("SF Compact Rounded Medium", size: 16))
                                .foregroundColor(Color("DarkGrey"))
                            Text(chat.message)
                                .font(.custom("SF Compact Rounded Medium", size: 14))
                                .foregroundColor(Color("LightGrey"))
                        }
                        Spacer()
                        NavigationLink(destination: Chat(), label:{
                            if chat.unreadMsg == "1"{
                                Image(systemName: "1.circle.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color("blue"))
                            }
                        })
                    }
                    .padding()
                    .frame(width: 356, height: 81)
                    .background(Color("CardsColor"))
                    .cornerRadius(12)
                    
                }
                
                .navigationTitle("Direct Massages")
                .navigationBarItems(trailing: Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                    
                })
            }
            
        }
    }
}

struct DirectMessages_Previews: PreviewProvider {
    static var previews: some View {
        DirectMessages()
    }
}
