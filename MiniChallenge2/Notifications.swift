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
            Text("Hello, World!")
            
            
                .navigationTitle("Notifications")
                .toolbar(content: {
                    Text("Clear All")
                        .font(.title3)
                        .foregroundColor(Color.accentColor)
                })
            
        }
    }
}

struct Nofifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
