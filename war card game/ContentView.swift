//
//  ContentView.swift
//  war card game
//
//  Created by Prakash Thirunavukkarasu on 1/2/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var showVBanner = false
    @State var showLBanner = false
    @State var backG = false
    var body: some View {
        
        ZStack {
            Image(
                "background-cloth"
            )
            VStack(alignment: .center) {
             
         
                Image(
                    "logo"
                )
                
                HStack {
                    

                    Image(
                        playerCard
                    )
                    .padding(
                        .leading, 40
                    )
                    .imageScale(
                        .large
                    )
                    
                    Spacer()
                    Image(
                        cpuCard
                    )
                    .padding(
                        .trailing,
                        40
                    )
                    .imageScale(
                        .large
                    )
                }

                Button {
                                        deal()
                } label: {
                    Image(
                        "button"
                    )
                }
                .padding(
                    .bottom,
                    20.0
                )
                
                HStack {
                    
                    VStack {
                        Text(
                            "Player"
                        )
                        .foregroundColor(
                            Color.white
                        )
                        
                        .font(
                            .headline
                        )
                        Text(
                            String(
                                playerScore
                            )
                        )
                        .foregroundColor(
                            Color.white
                        )
                        .font(
                            .largeTitle
                        )
                    }
                    .padding(
                        .leading,
                        120
                    )
                    Spacer()
                    
                    VStack {
                        
                        Text(
                            "CPU"
                        )
                        .foregroundColor(
                            Color.white
                        )
                        
                        .font(
                            .headline
                        )
                        Text(
                            String(
                                cpuScore
                            )
                        )
                        .font(
                            .largeTitle
                        )
                        .foregroundColor(
                            Color.white
                        )
                    }
                    
                    .padding(
                        .trailing,
                        100.0
                    )
                    
                }
            }
            
            
            if showLBanner{
                ZStack{
                    Image("background-cloth")
                        
                    Image ("losing" )
                        .resizable().frame(width: 350.0, height: 300.0)
                            .cornerRadius(40)
                    
                    Button {
                       
                        reset()
                        
                    } label: {
                        Text( "Reset")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.top, 200.0)
                    }
                    
                    
                }
                
            }
            
            
            if showVBanner {
                
                ZStack{
                    Image("background-cloth")
                    Image("victory").resizable().frame(width: 350.0, height: 300.0)
                    
                        .cornerRadius(40)
                   
                    Button {
                       
                        reset()
                    } label: {
                        Text( "Reset")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.top, 200.0)
                    }
                    
                }
                
            }
           
           
        }
       
        
    }
    func deal() {
        print("sedrpthoe")
        let point1 = Int.random(in: 2...14)
        
        playerCard = "card" + String(point1)
        
        let point2 = Int.random(in: 2...14)
        cpuCard = "card" + String(point2)
        if point1 > point2 {
            playerScore = playerScore + 1
            
        }
        else if point1 < point2{
            cpuScore += 1
            
        }
       if playerScore == 10 {
           showVBanner = true
        }
        if cpuScore == 10 {
            showLBanner = true
        }
//
        
        
        
        
    }
    
    func reset () {
        playerCard = "back"
        cpuCard = "back"
        playerScore = 0
        cpuScore = 0
        showVBanner = false
        showLBanner = false
        
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
