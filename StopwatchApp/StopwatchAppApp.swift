//
//  StopwatchAppApp.swift
//  StopwatchApp
//
//  Created by Benjamin Lavallee on 2023-11-02.
//

import SwiftUI

@main
struct StopwatchAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView(selection: Binding.constant(3)) {
                
                Text("World Clock")
                    .tabItem {
                        Image(systemName: "globe")
                        Text("World Clock")
                    }
                    .tag(1)
                        Text("Alarm")
                     .tabItem {
                        Image(systemName: "alarm.fill")
                        Text("Alarm")
                    }
                     .tag(2)
                
                ContentView()
                    .tabItem {
                        Image(systemName: "stopwatch.fill")
                        Text("Stopwatch")
                    }
                    .tag(3)
                Text("Timer")
                    .tabItem{
                        Image(systemName: "timer")
                        Text("Timer")
                    }
                    .tag(4)
            }
            
            .accentColor(.orange)
            .preferredColorScheme(.dark)
        }
    }
}
