//
//  ContentView.swift
//  Color Grid
//
//  Created by Menura Wijesekara on 2024-01-16.
//

import SwiftUI

struct ContentView: View {
    let columnLayout = Array(repeating: GridItem(), count: 3)
    @State private var selectedColor = Color.gray
    
    let allColors : [Color] = [
               .pink,
               .red,
               .orange,
               .yellow,
               .green,
               .mint,
               .teal,
               .cyan,
               .blue,
               .indigo,
               .purple,
               .brown,
               .gray
    ]
    var body: some View {
        VStack {
            Text("Selected Color")
                .font(.body)
                .foregroundColor(selectedColor)
                .padding(10)
                .fontWeight(.semibold)
            ScrollView{
                LazyVGrid(columns: columnLayout) {
                    ForEach(allColors,id:\.description){
                        color in
                        Button{
                            selectedColor = color
                        }label: {
                            RoundedRectangle(cornerRadius: 4)
                                .aspectRatio(1.0, contentMode: ContentMode.fit)
                                .foregroundColor(color)
                        }
                        
                    }
                }
            }
        }
        .padding(10)
    }
}

#Preview {
    ContentView()
}
