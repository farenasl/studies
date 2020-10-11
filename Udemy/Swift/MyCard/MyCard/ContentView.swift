//
//  ContentView.swift
//  MyCard
//
//  Created by BCI MacBook Pro on 11-10-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Fabián Arenas")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("Technical Lead")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+56 9 857 44 171", imageName: "phone.fill")
                InfoView(text: "fabian.arenas.l@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
