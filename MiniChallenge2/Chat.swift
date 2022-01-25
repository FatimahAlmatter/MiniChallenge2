//
//  Chat.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct Chat: View {
    @State var fullText: String = ""
    
    struct Chats: Hashable{
        var msg : String
        var time : String
        var id : Int
    }
    
    @State var recieverMsg: [Chats] = [
        Chats(msg: "What is your business for?", time: "9:35 PM", id: 1),
        Chats(msg: "for hoodies store", time: "9:35 PM", id: 2),
        Chats(msg: "What is the type of advertisment? video or social media post", time: "9:36 PM", id: 1),
        Chats(msg: "Video for snapchat ad", time: "9:37 PM", id: 2),
        Chats(msg: "How many minutes?", time: "9:39 PM", id: 1),
        Chats(msg: "10 mins", time: "9:50 PM", id: 2),
        Chats(msg: "and what is your Offer?", time: "9:39 PM", id: 1)]
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(spacing: 18){
                    ForEach(recieverMsg, id: \.self) { item in
                        if item.id == 1 {
                            recievedMsg(msg: item.msg, time: item.time)
                        } else {
                            sendMsg(msg: item.msg, time: item.time)
                        }
                        
                    }
                    Spacer()
                    
                }
                
            }
            
            .navigationTitle("Chat")
            .navigationBarTitleDisplayMode(.inline)
            
            HStack{
                Image(systemName: "paperclip")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("blue"))
                    .padding(5)
                TextField("Enter Message", text: $fullText)
                    .padding(2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(12)
                
                Button {
                    let date = Date.now.formatted(date: .omitted, time: .shortened)
                    let id = 2
                    let chat = Chats(msg: fullText, time: date, id: id)
                    recieverMsg.append(chat)
                    
                } label: {
                    Image(systemName: "paperplane.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("blue"))
                        .padding(5)
                }
            }
            .padding()
            .background(.regularMaterial)
            
        }
        
        
    }
    func sendMsg(msg: String, time: String) -> some View{
        return HStack(alignment: .bottom){
            Text(msg)
                .font(Font.custom("SF Compact Rounded Medium", size: 16))
                .lineLimit(nil)
            Spacer()
            Text(time)
                .foregroundColor(Color("DarkGrey"))
                .padding(.leading, 10)
                .font(.caption2)
        }
        .frame(width: 270)
        .padding()
        .background(Color(red: 1.033, green: 0.823, blue: 0.749))
        .cornerRadius(17)
        .padding(.leading, 59)
        
    }
    
    func recievedMsg(msg: String, time: String) -> some View{
        return HStack(alignment: .bottom){
            Text(msg)
                .lineLimit(nil)
                .font(Font.custom("SF Compact Rounded Medium", size: 16))
            Spacer()
            Text(time)
                .foregroundColor(Color("DarkGrey"))
                .padding(.leading, 10)
                .font(.caption2)
        }
        .frame(width: 270)
        .padding()
        .background(Color("CardsColor"))
        .cornerRadius(17)
        .padding(.trailing, 59)
    }
}

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
