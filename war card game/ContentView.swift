//
//  ContentView.swift
//  war card game
//
//  Created by Hasham Raza  on 09/08/2024.
//

import SwiftUI

struct ContentView: View {
  
 @State   var playCard = "card7"
  @State  var cpuCard = "card13"
    
 @State   var playerScore = 0
   @State var cpuScore = 0
    
    
    
    var body: some View {
        
        
        
        ZStack(){
            
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
            
            VStack(){
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                HStack(){
                    
                    
                    Spacer()
                    Image(playCard)
                    Spacer()
                    Image(cpuCard)
                    
                    Spacer()
                }
                
                
                Spacer()
              
                
                Button{
                    
                    deal()
                }
                       
                       label: {
                    Image("button")
                }
                
                
                
                
                Spacer()
                
                
                HStack(){
                    Spacer()
                    
                    VStack(){
                        
                        
                        Text("player")
                            .font(.headline)
                            .padding([.bottom, .trailing], 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack(){
                        
                        
                        Text("CPU")
                            .font(.headline)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    
                }
                .foregroundColor(.white)
                Spacer()
                
            }
            
            
        }
        
        
        
        
    }
    
    func deal(){
    // randomize the player cards
    @State    var playerCardvalue = Int.random(in: 2...14)
        playCard = "card" + String(playerCardvalue)
        
        
        
        
        // RANDOMIZE THE CpU CARDS
     @State   var cpuCardvalue = Int.random(in: 2...14)
        cpuCard = "card" + String(Int.random(in: 2...14))
        
        // update the Scores
        if playerCardvalue > cpuCardvalue{
            
            // Add  to player Score
            playerScore = playerScore + 1
 
        }
        else if cpuCardvalue > playerCardvalue {
            cpuScore += 1
         
        }
        
        
        else if playerScore == 10 {
          
            
            print("Game Over ")
            }
        else if cpuScore == 10 {
            
            
            
            print("Game Over ")
            
            
        }
        
        else
        {
    
    playerScore -= 1
    cpuScore -= 1
    
    
    
}
    }
}





    struct ContentView_Preview: PreviewProvider{
        static var previews: some View{
            ContentView()
            
            
            
        }
        
    }
    

