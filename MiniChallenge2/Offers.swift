//
//  Offers.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct Offers: View {
    @State var allProjects = 0
    var body: some View {
        
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
                    VStack(alignment: .leading){
                        
                        HStack{
                            Image("marketer1")
                                .resizable()
                                .padding(.trailing, 1.0)
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            
                            Text("AbhoyLatif")
                                .font(.custom("SF Pro Rounded", size: 19))
                                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("DarkGrey"))
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 31.0)
                                .frame(width: 140.0)
                                
                            Image(systemName: "message.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                            .foregroundColor(Color("blue"))
                            .padding(.leading, 80.0)
                            .padding(.bottom, 1.0)
                            
                        }
                        
                        HStack{
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("Yellow"))
                            
                                .padding(.bottom, 190.0)
                                .padding(.leading, 80.0)
                                
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("Yellow"))
                            .padding(.bottom, 190.0 )
                                .padding(.leading, 3.0)
                            
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("Yellow"))
                                .padding(.bottom, 190.0)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("Yellow"))
                                .padding(.bottom, 190.0)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("LightGrey"))
                                .padding(.bottom, 190.0)
                            
                            
                        }
                       
                        .padding(.trailing, 0.0)
                        
                     


                    }
                    VStack {
                        Text("")
                        Divider()
                        Text("")
                       
                    }
                    
                    .padding([.bottom, .trailing], 42.0)


                }
                .frame(width: 356, height: 160)
                .padding([.top, .trailing], 59.0)
                .background(Color("CardsColor"))
                .cornerRadius(12)
            }
                .navigationTitle("offers")
                .navigationBarTitleDisplayMode(.large)
                
            
        
    }
}

struct Offers_Previews: PreviewProvider {
    static var previews: some View {
        Offers()
    }
}
