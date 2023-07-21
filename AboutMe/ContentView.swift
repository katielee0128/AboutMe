//
//  ContentView.swift
//  AboutMe
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var aboutMe = "About Me"
    @State private var button = "Facts"
    @State private var next = "End"
    var body: some View {
        VStack(spacing: 14) {
            ZStack {
                Image("unnamed-1")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
            }.padding().background(Rectangle().foregroundColor(.pink))
            Text("Katie Lee")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
            Text(aboutMe)
            Button(button) {
                aboutMe = "Hobbies- crochet, travelling, film photography This summer I traveled to Korea with my family!"
                button = next
            }.buttonStyle(.borderedProminent).tint(.pink)
        }.padding(20.0)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
