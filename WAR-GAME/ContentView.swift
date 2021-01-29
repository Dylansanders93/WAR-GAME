//
//  ContentView.swift
//  WAR-GAME
//
//  Created by Christopher Sanders on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randnum1 = 2
    @State private var randnum2 = 2
    
    @State private var score1 = 0
    @State private var score2 = 0
    
    var body: some View {
        
        
        ZStack {
     
    Image("background")
        .ignoresSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image("card" + String(randnum1))
                    Spacer()
                    Image("card" + String(randnum2))
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    // randomize the randnum1 + randnum2 state properties
                    self.randnum1 = Int.random(in: 2...14)
                    self.randnum2 = Int.random(in: 2...14)
                    
                    // Update scores
                    if self.randnum1 >
                        self.randnum2 {
                        self.score1 += 1
                    }
                    else if self.randnum2 >
                        self.randnum1 {
                        self.score2 += 1
                        
                    }
                    //TODO
                }) {
                    
                    Image("dealbutton")
                        .renderingMode(.original)
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("PLAYER")
                            .foregroundColor(Color.white)
                        Text(String(score1))
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                        Text(String(score2))
                        
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
