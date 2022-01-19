//
//  ContentView.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Notifications()
                .tabItem {
                    Image(systemName: "bell.circle.fill")
                    Text("Notifications")
                }
            
            Projects()
                .tabItem {
                    Image(systemName: "briefcase.circle.fill")
                    Text("Projects")
                }
            
            PostProject()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Post")
                }
            
            DirectMessages()
                .tabItem {
                    Image(systemName: "message.circle.fill")
                    Text("Chats")
                }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
