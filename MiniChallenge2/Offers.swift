//
//  Offers.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI
struct Offers: View {
    
    @EnvironmentObject var offers : OffersClass

    @State var allProjects = 0
    @State var showingAlert = false
    @State var clicked = false
    @State var rejectAlert = false
    
    @State var projectID : Int
    @State var offerStatus : String

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
            ForEach(offers.offer) { item in
                if item.projectID == projectID {
                    VStack(alignment: .center, spacing: 20){
                        HStack{
                            NavigationLink(destination: MarketerProfile()){
                                Image(item.marketerImage)
                                    .resizable()
                                    .padding(.trailing, 1.0)
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                            }
                            VStack(alignment: .leading){
                                Text(item.marketerName)
                                    .lineLimit(nil)
                                    .font(.custom("SF Compact Rounded", size: 19))
                                    .foregroundColor(Color("DarkGrey"))
                                    .padding(.trailing, 31.0)
                                    .padding(.bottom,-4)
                                    .padding(.top,-6)
                                
                                
                                HStack{
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(Color("Yellow"))
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(Color("Yellow"))
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(Color("Yellow"))
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(Color("Yellow"))
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(Color("LightGrey"))
                                }
                            }
                            
                            Spacer()
                            NavigationLink(destination: Chat()){
                                Image(systemName: "message.circle.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(Color("blue"))
                                    .padding(.leading, 100.0)
                                    .padding(.bottom, 1.0)
                            }
                        }
                        Divider()
                        
                        HStack{
                            Spacer()
                            Image(systemName: "dollarsign.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color("Green"))
                            Text(item.priceoffers)
                                .font(.custom("SF Compact Rounded Meduim", size: 20))
                                .foregroundColor(Color("DarkGrey"))
                            //.padding(.trailing, 70.0)
                            Spacer()
                            
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.red)
                            
                            Text(item.timeoffers)
                                .font(.custom("SF Compact Rounded Meduim", size: 20))
                                .foregroundColor(Color("DarkGrey"))
                            Spacer()
                        }
                        
                        HStack{
                            Button {
                                clicked = true
                                print(item.offerStatus)
                                showingAlert = true
                                
                            } label: {
                              //  if  item.offerStatus == "Non" {
                                    Text("Accept")
                                        .font(Font.custom("SF Compact Rounded Medium", size: 15))
                                        .foregroundColor(.white)
                                        .frame(width: 160, height: 40)
                                        .background(Color("AccentColor"))
                                        .cornerRadius(12)
                              //  } else {
//                                    Text("Accepted")
//                                        .font(Font.custom("SF Compact Rounded Medium", size: 15))
//                                        .foregroundColor(.white)
//                                        .frame(width: 160, height: 40)
//                                        .background(Color.green)
//                                        .cornerRadius(12)
//                                        .disabled(clicked == false)
                            //  }
                                
                          
                                
                            }.alert(isPresented: $showingAlert) {
                                Alert( title: Text("Succuss ✅"),
                                       message: Text("Project status changed to In Progress"),
                                       dismissButton: .default(Text("Got it!")))
                            }
                            //.disabled(clicked == true)
                            
                            
                            Button {
                                rejectAlert = true
                            } label: {
                                Text("Reject")
                                    .font(Font.custom("SF Compact Rounded Medium", size: 15))
                                    .foregroundColor(Color.accentColor)
                                    .frame(width: 160, height: 40)
                                    .cornerRadius(12)
                                    .overlay(RoundedRectangle(cornerRadius: 12)
                                                .stroke(Color("AccentColor")))
                                
                                
                            }.alert(isPresented: $rejectAlert) {
                                Alert( title: Text("Alert🔴"),
                                       message: Text("Ary you sure you want to reject this offer?"),
                                       primaryButton: .destructive(Text("Reject"), action: {
//                                    var index = item.id
//                                    offer.remove(at: index)
                                })
                                       ,secondaryButton: .cancel()
                                )
                            }
                        }
                    }
                    .padding()
                    .frame(width: 357, height: 220)
                    .background(Color("CardsColor"))
                    .cornerRadius(12)
                    
                    //  if item.
                    
                    
                }
            }
            .navigationTitle("offers")
        }
    }
}

struct Offers_Previews: PreviewProvider {
    static var previews: some View {
        Offers(projectID: 1, offerStatus: "Non")
    }
}
