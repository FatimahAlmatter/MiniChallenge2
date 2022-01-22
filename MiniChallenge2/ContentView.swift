//
//  ContentView.swift
//  MiniChallenge2
//
//  Created by Fatimah Almatter on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var activeTab = 2
    var body: some View {
        TabView(selection: $activeTab){
            Notifications()
                .tabItem {
                    Image(systemName: "bell.circle.fill")
                    Text("Notifications")
                }.tag(1)
            
            Projects()
                .tabItem {
                    Image(systemName: "briefcase.circle.fill")
                    Text("Projects")
                }.tag(2)
            
            PostProject()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Post")
                }.tag(3)
            
            DirectMessages()
                .tabItem {
                    Image(systemName: "message.circle.fill")
                    Text("Chats")
                }.tag(4)
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }.tag(5)
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
