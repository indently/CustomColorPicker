//
//  ContentView.swift
//  MainProject
//
//  Created by Federico on 15/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor: Color = .blue
    
    var body: some View {
        VStack {
            MyColorPicker(selectedColor: $selectedColor)
            Spacer()
            
            Circle()
                .frame(width: 300, height: 300)
                .cornerRadius(20)
                .foregroundColor(selectedColor)
            Text("\(selectedColor.description)")
                .font(.system(size: 40, design: .rounded))
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
