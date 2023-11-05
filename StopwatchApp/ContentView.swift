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
                
                Spacer()
                
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
                // List of times
                    List {
                        Group {
                            HStack {
                                Text("Lap 5")
                                Spacer()
                                Text("00:00.98")
                            }
                            
                            HStack {
                                Text("Lap 4")
                                    .foregroundStyle(.red)
                                Spacer()
                                Text("00:04.08")
                                    .foregroundStyle(.red)
                            }
                           
                            HStack {
                                Text("Lap 3")
                                    .foregroundStyle(.green)
                                Spacer()
                                Text("00:00.96")
                                    .foregroundStyle(.green)
                            }
                           
                            HStack {
                                Text("Lap 2")
                                Spacer()
                                Text("00:02.76")
                            }
                          
                            HStack {
                                Text("Lap 1")
                                Spacer()
                                Text("00:01.16")
                            }
                            
                        }
                        // Remove inset from list items
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
           
                // Set the amount of vertical height we want this list to take up
                .frame(height: 300)
                // Adjust list style to match design
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
