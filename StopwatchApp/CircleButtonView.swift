//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Benjamin Lavallee on 2023-11-02.
//

import SwiftUI

struct CircleButtonView: View {
    
    //MARK: Stored properties
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    //MARK: Computed properties

    // Returns the button's user interface...
    var body: some View {
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 100)
            
            // Second layer
            Circle()
                .foregroundColor(.black)
            .frame(width: 93)
            
            // Third layer
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 89)
            
            // Fourth layer
            Text(label)
                .foregroundStyle(labelColor)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonView(buttonColor: .gray, label: "Reset", labelColor: .white)
}
