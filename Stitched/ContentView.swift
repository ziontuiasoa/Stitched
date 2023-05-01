//
//  ContentView.swift
//  Stitched
//
//  Created by Zion Tuiasoa on 5/1/23.
//

import SwiftUI

struct NumberView: View {

    @State private var number = 0
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)
                    .padding(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                
                VStack {
                    Text("\(number)")
                        .font(.largeTitle)
                    
                    HStack {
                        Button(action: {
                            number += 1
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.largeTitle)
                        }
                        
                        Button(action: {
                            if number > 0 {
                                number -= 1
                            }
                        }) {
                            Image(systemName: "minus.circle.fill")
                                .font(.largeTitle)
                        }
                    }
                    .padding(.top, 20)
                }
                .padding()
            }
        }
        .padding(10)
        .frame(width: 200, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
