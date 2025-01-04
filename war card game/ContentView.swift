//
//  ContentView.swift
//  war card game
//
//  Created by Prakash Thirunavukkarasu on 1/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background-wood-grain" )
            VStack{
                Image("logo")
        
                HStack {
                    Image("card3")
                        .padding(.leading, 40)
                        .imageScale(.large)
                    
                    Spacer()
                    Image("card2")
                        .padding(.trailing, 40)
                        .imageScale(.large)
                }
                Image("button")
                
                HStack {

                    VStack{
                        Text("Player")
                            .foregroundColor(Color.white)
                     
                            .font(.headline)
                        Text("0")
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading, 120)
                    Spacer()
                    
                    VStack{
                    
                        Text("CPU")
                            .foregroundColor(Color.white)
                           
                            .font(.headline)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    .padding(.trailing, 100.0)
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
  
