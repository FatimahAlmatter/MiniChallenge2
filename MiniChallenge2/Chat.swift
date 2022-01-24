//
//  Chat.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct Chat: View {
    @State private var fullText: String = ""
    var body: some View {
        VStack{
            VStack{
                VStack(alignment: .leading){
            
                
                    
                ZStack{
                    RoundedRectangle(cornerRadius: 17)
                        .frame(width: 233.0, height: 45.0)
                        .foregroundColor(Color("CardsColor"))
                    
                    Text("What is your business for?")
                        .font(.custom("SF Pro Rounded", size: 14))
                    
                        .fontWeight(.medium)
                        .foregroundColor(Color("LightGrey"))
                        
                        
                }
            
                Text("9:34")
                    .font(.custom("SF Pro Rounded", size: 12))
                
                    .fontWeight(.regular)
                    .foregroundColor(Color("LightGrey"))
                    
                    
            
            }
                VStack(alignment: .trailing){
                
                    ZStack{
                        RoundedRectangle(cornerRadius: 17)
                            .frame(width: 233.0, height: 45.0)
                            .foregroundColor(Color(red: 1.033, green: 0.823, blue: 0.749))
                        
                        Text("for hoodies stor")
                            .font(.custom("SF Pro Rounded", size: 14))
                        
                            .fontWeight(.medium)
                            .foregroundColor(Color("LightGrey"))
                            
                            
                    }
                
                    Text("9:35")
                        .font(.custom("SF Pro Rounded", size: 12))
                    
                        .fontWeight(.regular)
                        .foregroundColor(Color("LightGrey"))
                        
                        
                
                }
                VStack(alignment: .leading){
                
                ZStack{
                        RoundedRectangle(cornerRadius: 17)
                            .frame(width: 260.0, height: 45.0)
                            .foregroundColor(Color("CardsColor"))
                        
                        Text("What is the type of advertisment?                                       video or social media post?")
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .font(.custom("SF Pro Rounded", size: 14))
                        
                            .foregroundColor(Color("LightGrey"))
                            
                            
                    }
                
                    Text("9:36")
                        .font(.custom("SF Pro Rounded", size: 12))
                    
                        .fontWeight(.regular)
                        .foregroundColor(Color("LightGrey"))
                        
                        
                
                }
        
                VStack(alignment: .trailing){
            ZStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 17)
                    .frame(width: 220.0, height: 45.0)
                    .foregroundColor(Color(red: 1.033, green: 0.823, blue: 0.749))
                
                Text("Video for snapchat ad")
                    .font(.custom("SF Pro Rounded", size: 14))
                
                    .fontWeight(.medium)
                    .foregroundColor(Color("LightGrey"))
                    .padding(.leading)
                    
            }
        
            Text("9:37")
                .font(.custom("SF Pro Rounded", size: 12))
            
                .fontWeight(.regular)
                .foregroundColor(Color("LightGrey"))
                .multilineTextAlignment(.trailing)
                .padding(.leading, 180.0)
                
        
        }
                VStack(alignment: .leading){
                
                    ZStack{
                        RoundedRectangle(cornerRadius: 17)
                            .frame(width: 233.0, height: 45.0)
                            .foregroundColor(Color("CardsColor"))
                        
                        Text("How many mins?")
                            .font(.custom("SF Pro Rounded", size: 14))
                        
                            .fontWeight(.medium)
                            .foregroundColor(Color("LightGrey"))
                            
                            
                    }
                
                    Text("9:38")
                        .font(.custom("SF Pro Rounded", size: 12))
                    
                        .fontWeight(.regular)
                        .foregroundColor(Color("LightGrey"))
                        
                        
                
                }
            
                VStack(alignment: .trailing){
                 
                     ZStack{
                         RoundedRectangle(cornerRadius: 17)
                             .frame(width: 130.0, height: 45.0)
                             .foregroundColor(Color(red: 1.033, green: 0.823, blue: 0.749))
                         
                         Text("2 mins")
                             .font(.custom("SF Pro Rounded", size: 14))
                         
                             .fontWeight(.medium)
                             .foregroundColor(Color("LightGrey"))
                             
                             
                     }
                 
                     Text("9:39")
                         .font(.custom("SF Pro Rounded", size: 12))
                     
                         .fontWeight(.regular)
                         .foregroundColor(Color("LightGrey"))
                         
                         
                 
                 }
                VStack(alignment: .trailing){
                 
                     ZStack{
                         RoundedRectangle(cornerRadius: 17)
                             .frame(width: 233.0, height: 45.0)
                             .foregroundColor(Color("CardsColor"))
                         
                         Text("What is your offer?")
                             .font(.custom("SF Pro Rounded", size: 14))
                         
                             .fontWeight(.medium)
                             .foregroundColor(Color("LightGrey"))
                             
                             
                     }
                 
                     Text("9:340")
                         .font(.custom("SF Pro Rounded", size: 12))
                     
                         .fontWeight(.regular)
                         .foregroundColor(Color("LightGrey"))
                         
                         
                 
                 }
            }
            
            Spacer()
               
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .frame(width: 390.0, height: 84.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.973, green: 0.973, blue: 0.973)/*@END_MENU_TOKEN@*/)
                         
                VStack{
                    HStack{
                        Button(action: { //To Do
                            
                        }) {
                            Image(systemName: "paperclip")
                                .resizable()
                                
                                
                                .frame(width: 25, height: 25).foregroundColor(Color("blue"))
                               

                        }
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 12)
                                .frame(width: 319.0, height: 40.0)
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                            HStack{
                                TextField("Enter Message", text: $fullText)
                                    .padding(.leading)
                                  
                        .frame (width: UIScreen.main.bounds.width - 99, height:18)
                         
                        Button(action: { //To Do
                            
                        }) {
                            Image(systemName: "paperplane.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color("blue"))
                                .padding(.trailing)
                        }
                            }
                           
                           
                            
                        }
                        
                    }
                    
                    
                }
          
                
                
            }
            
        }
        .navigationTitle("Abhoy Latif")
        .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {}) {
                Image( "img1")
                    .resizable()
                    .frame(width: 40, height: 40)
            })
        
        
        
    }
}

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
