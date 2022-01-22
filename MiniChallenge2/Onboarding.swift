//
//  Onboarding.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct Onboarding: View {
    @State var showMainScreen = false
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 290, height: 290, alignment: .center)
                .foregroundColor(Color.accentColor)
                .padding(.bottom,155)
            
            Rectangle()
                .edgesIgnoringSafeArea(.bottom)
                .foregroundStyle(.ultraThinMaterial)
                .frame(width: 390, height: 470, alignment: .center)
                .padding(.top,310)
            
            Text("With CREAT Find Your Creative Marketer Faster")
                .tracking(6.41)
                .padding(.top,100)
                .foregroundColor(Color("DarkGrey"))
                .font(Font.custom("SF Compact", size: 30))
                .lineSpacing(6)
            
            if showMainScreen {
                ContentView()
            } else {
                Button {
                    self.showMainScreen = true
                } label: {
                    Text("START")
                        .font(Font.custom("SF Compact", size: 15))
                        .foregroundColor(.white)
                        .frame(width: 160, height: 40)
                        .background(Color("AccentColor"))
                        .cornerRadius(12)
                }
                .padding(.top,560)
            }
            
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
            .preferredColorScheme(.light)
    }
}
