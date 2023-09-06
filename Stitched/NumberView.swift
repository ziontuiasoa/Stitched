//
//  ContentView.swift
//  Stitched
//
//  Created by Zion Tuiasoa on 5/1/23.
//

import SwiftUI

struct NumberView: View {

    @State private var numberOfRows = 0
    private let rowLabel = "Rows"
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .frame(width: 200, height: 200)
                    .shadow(color: .black, radius: 2, x: 2, y: 0)
                
                VStack(spacing: 10) {
                    Text(rowLabel)
                        .font(.title)
//                        .padding(.bottom)
                    
                    Text("\(numberOfRows)")
                        .font(.largeTitle)
                    
                    HStack {
                        Button(action: {
                            if numberOfRows > 0 {
                                numberOfRows -= 1
                            }
                        }) {
                            Image(systemName: Strings.Images.minusCircleFill)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 2, x: 2, y: 0)
                        }
                        Spacer()
                        Button(action: {
                            numberOfRows += 1
                        }) {
                            Image(systemName: Strings.Images.plusCircleFill)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 2, x: 2, y: 0)
                        }
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                    Button(action: {
                        numberOfRows = 0
                    }, label: {
                        Text("Reset")
                            .font(.system(size: 18))
                            .padding()
                            .foregroundColor(.white)

                    })
                    .frame(height: 30, alignment: .center)
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 2, x: 2, y: 0)
//                    .buttonStyle(RoundedRectangle(cornerSize: 5))
                }
                .frame(width: 200, height: 200, alignment: .center)
            }
        }
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
