//
//  ContentView.swift
//  AboutMeApp
//
//  Created by India Poetzscher on 4/22/23.
//

import SwiftUI

struct ContentView: View {
    
    var funFacts = ["I love to swim", "I don't like chocolate", "I'm fluent in Mandarin", "I lived in Singapore for 5 years", "I can name all the flags and capitals of the world", "Sushi is my fav food and my dog's name", "I love to draw and paint"]
    @State private var funFact = ""
    @State private var buttonText = "click for a fun fact!"
    
    var body: some View {
        ZStack() {
            Color(.blue)
                .ignoresSafeArea()
            VStack(spacing: 20){
                HStack {
                    Image(systemName: "star")
                    Text("India Poetzscher")
                        .font(.largeTitle)
                        .fontWeight(.thin)
                    Image(systemName: "star")
                }.foregroundColor(.white)
                Image("beach")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .border(.blue, width: 10)
                Button(buttonText) {
                    let randomInt = Int.random(in: 0..<funFacts.count)
                    funFact = funFacts[randomInt]
                    buttonText = "click for another fact"
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .background(.white)
                .cornerRadius(10)
                .foregroundColor(.blue)
                Text(funFact)
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
