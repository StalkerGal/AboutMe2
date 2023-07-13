//
//  ContentView.swift
//  AboutMe2
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    var body: some View {
        ZStack{
            Color("teapink")
                .ignoresSafeArea()
        VStack (alignment: .center, spacing: 20) {
            
            Text("about me")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color("midnightpurple"))
            ZStack {
                Color("cherryblossompink")
                    .ignoresSafeArea()
                VStack{
                    
                HStack (spacing:20){
                        
                        VStack (alignment: .center, spacing:20) {
                            Button {
                                text = "this is one of my favorite pictures, because i love candids! i am soo bad at smiling for pictures so these natural-looking pictures are my fave. this was taken during spring break in vancouver, bc!"
                            } label: {
                                Image("intropic")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15)
                            }
                            Button {
                                text = "i'm an older sister of two, my brother is 8 and my sister is 4. because they are so much younger than i am, i spent a lot of time alone as a kid- this means i can relate with only children AND ppl with a lot of siblings!"
                            } label: {
                                Image("siblings")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15)
                            }
                        }
                        
                        VStack (spacing:20){
                            Text("hi, i'm medha! click on each picture to learn more about me")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("matcha"))
                            
                            
                            Button {
                                   text = "i am a huge fan of boba and all types of coffee and tea! i have given starbucks way too much of my money because there's one close to my house. if i had to choose, my favorite drink from starbucks right now would be a vanilla bean frappucino with a scoop of dragonfruit!"
                            } label: {
                                Image("boba")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15)
                            }
                        }
                    }
                    ZStack {
                        Text(text)
                            .font(.title3)
                            .foregroundColor(.secondary)
                            .padding(10)
                            .background(.ultraThinMaterial)
                            .cornerRadius(15)
                    }
                    .ignoresSafeArea()
                }
                .padding(.all, 15.0)
            }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
