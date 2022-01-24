//
//  Offers.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI
struct Offers: View {
    @State var allProjects = 0
    struct offers : Hashable{
        var marketerName: String
        var priceoffers: String
        var timeoffers: String
        var marketerImage: String
    }
        
    //Define array from struct
    var offer : [offers] = [
        offers(marketerName: "Khaled Ali", priceoffers: "100$", timeoffers: "2 Weeks", marketerImage: "marketer1"),
        offers(marketerName: "Nora faisal", priceoffers: "236$", timeoffers: "1 months", marketerImage: "marketer2"),
        offers(marketerName: "Nout Golstein", priceoffers: "125$", timeoffers: "2 months", marketerImage: "marketer3"),
        offers(marketerName: "Fahad Bader", priceoffers: "500$", timeoffers: "4 Days", marketerImage: "marketer3")
    ]
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
            ForEach(offer, id: \.self) { item in
              // cardStyle(offers: offers.marketerName, offers: offers.priceoffers, offers: offers.timeoffers)
            VStack(alignment: .center, spacing: 20){
                HStack{
                    Image(item.marketerImage)
                        .resizable()
                        .padding(.trailing, 1.0)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
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
                            //                                .padding(.bottom, 190.0)
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
                    Text("Accept")
                        .font(Font.custom("SF Compact Rounded Medium", size: 15))
                        .foregroundColor(.white)
                        .frame(width: 160, height: 40)
                        .background(Color("AccentColor"))
                        .cornerRadius(12)
                    Text("Reject")
                        .font(Font.custom("SF Compact Rounded Medium", size: 15))
                        .foregroundColor(Color.accentColor)
                        .frame(width: 160, height: 40)
                        .cornerRadius(12)
                        .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color("AccentColor")))
                    
                }
                
            }
         .padding()
            .frame(width: 357, height: 220)
            .background(Color("CardsColor"))
            .cornerRadius(12)
            }
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
