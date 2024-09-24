//
//  ContentView.swift
//  WarCardGame
//
//  Created by Pranjal Snehi on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var Image1 = "card2"
    @State var Image2 = "card10"
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("logo")
                    .shadow(radius: 40)
                HStack{
                    Image(Image1)
                        .shadow(radius: 40)
                        .padding(.horizontal)
                    Image(Image2)
                        .shadow(radius: 40)
                        .padding(.horizontal)
                }
                
                Button {
                    deal()
                } label: {
                    Image("button")
                        .padding()
                }

                HStack{

                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(cpuScore))
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
    func deal(){
        print("Deal")
        let random1 = Int.random(in: 2...14)
        let random2 = Int.random(in: 2...14)
        Image1 = "card" + String(random1)
        Image2 = "card" + String(random2)
        if random1 > random2 {
            playerScore = playerScore + 1
        }
        else if random2 > random1{
            cpuScore = cpuScore + 1
        }
    }
}

#Preview {
    ContentView()
}
