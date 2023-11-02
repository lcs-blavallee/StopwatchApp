//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Benjamin Lavallee on 2023-11-02.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(.gray)
            .frame(width: 100)
            
            // Second layer
            Circle()
                .foregroundColor(.black)
            .frame(width: 93)
            
            // Third layer
            Circle()
                .foregroundColor(.gray)
            .frame(width: 89)
            
            // Fourth layer
            Text("Reset")
                .foregroundStyle(.white)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonView()
}
