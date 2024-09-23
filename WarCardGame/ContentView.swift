//
//  ContentView.swift
//  WarCardGame
//
//  Created by Pranjal Snehi on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("logo")
                    .shadow(radius: 40)
                HStack{
                    Image("card2")
                        .shadow(radius: 40)
                        .padding(.horizontal)
                    Image("card3")
                        .shadow(radius: 40)
                        .padding(.horizontal)
                }
                Image("button")
                    .padding()
                HStack{

                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .fontWeight(.bold)
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
