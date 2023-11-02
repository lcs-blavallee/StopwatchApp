//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Benjamin Lavallee on 2023-11-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer (backkground)
            Color.black
                .ignoresSafeArea()
            
            // Second Layer (rest of interface)
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundStyle(.white)
                
                // Create a circular button
                HStack {
                    CircleButtonView(buttonColor: Color("Dark Grey"),
                                     label: "Reset",
                                     labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("Dark Green"), label: "Start", labelColor: .green)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
