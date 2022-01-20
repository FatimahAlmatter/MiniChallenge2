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
                    HStack{
                        Image(systemName: "dollarsign.circle")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color("Green"))
                            .padding(.trailing, 11.0)
                        Text("100$")
                            .foregroundColor(Color("DarkGrey"))
                            .padding(.trailing, 90.0)
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.red)
                        
                        Text("2 weeks")
                            .foregroundColor(Color("DarkGrey"))
                            .padding(.leading, 20)
                         
                        
                    }
                  
                    HStack{
                        
                        Text("Accept")
                            .foregroundColor(.white)
                         
                            .frame(width: 160, height: 40)
                            .background(Color("AccentColor"))
                            .border(Color("AccentColor"))
                            .cornerRadius(12)
                    
                    .padding(.top, 87.0)
                    .padding(.trailing, 10.0)
                        Text("Reject")
                            .foregroundColor(Color("AccentColor"))
                         
                            .frame(width: 160, height: 40)
                            .background(Color(""))
                          
                            .cornerRadius(12)
                            .border(Color("AccentColor"))
                    
                    .padding(.top, 87.0)
                    .padding(.leading, 10.0)
                        
                    }
                    
                
                    
                }
                .frame(width: 356, height: 160)
                .padding(.top, 59.0)
                .padding(.trailing, 20.0)
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
