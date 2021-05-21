//
//  ContentView.swift
//  YouEco
//
//  Created by Giulia Centracchio on 21/05/21.
//

import SwiftUI

struct ContentView: View {
    @State var indiceSelezionato = 0
    init() {
        UITabBar.appearance().barTintColor = .white
    }
    var body: some View {
        ZStack {
            VStack {
                ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom)){
                    switch indiceSelezionato {
                    case 0:
                        Color.blue
                            .ignoresSafeArea(.all,edges: .top)
                    case 1:
                        Color.red
                            .ignoresSafeArea(.all,edges: .top)
                    case 2:
                        Color.purple
                            .ignoresSafeArea(.all,edges: .top)
                    default:
                        Text ("tabSelezionata: \(indiceSelezionato)")
                        
                    }
                        
                   
                }
                HStack {
                    Button (action: {indiceSelezionato = 0}, label: {
                        VStack {
                            Image ("Pin")
                                .foregroundColor(indiceSelezionato == 0 ? Color (#colorLiteral(red: 0.4862745098, green: 0.7411764706, blue: 0.2862745098, alpha: 1)):.init(white: 0.8))
                            Text("Bins")
                                .font(.system(size: 17))
                                .foregroundColor(indiceSelezionato == 0 ? Color (#colorLiteral(red: 0.4862745098, green: 0.7411764706, blue: 0.2862745098, alpha: 1)):.init(white: 0.8))
                            
                            
                        }
                        .padding(.trailing, 70)
                        
                        
                    })
                    Button (action: {indiceSelezionato = 1}, label: {
                        VStack {
                            Image ("Cestino")
                                .foregroundColor(indiceSelezionato == 1 ? Color (#colorLiteral(red: 0.4862745098, green: 0.7411764706, blue: 0.2862745098, alpha: 1)):.init(white: 0.8))
                            Text("Info")
                                .font(.system(size: 17))
                                .foregroundColor(indiceSelezionato == 1 ? Color (#colorLiteral(red: 0.4862745098, green: 0.7411764706, blue: 0.2862745098, alpha: 1)):.init(white: 0.8))
                            
                            
                        }
                        .padding(.horizontal)
                        
                        
                    })
                    Button (action: {indiceSelezionato = 2}, label: {
                        VStack {
                            Image ("medaglia profilo")
                                .foregroundColor(indiceSelezionato == 2 ? Color (#colorLiteral(red: 0.4862745098, green: 0.7411764706, blue: 0.2862745098, alpha: 1)):.init(white: 0.8))
                            Text("Rewards")
                                .font(.system(size: 17))
                                .foregroundColor(indiceSelezionato == 2 ? Color (#colorLiteral(red: 0.4862745098, green: 0.7411764706, blue: 0.2862745098, alpha: 1)):.init(white: 0.8))
                            
                            
                        }
                        .padding(.leading, 70)
                        
                        
                    })
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
