//
//  SwiftUIView.swift
//  kindnessApp
//
//  Created by Feiran Fang on 8/18/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        ZStack {
            Color("backgroundColor").ignoresSafeArea()
            
            VStack {
                
                VStack {
                    
                    Text("LEADERBOARD")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("leaderboard"))
                }.padding(.vertical, 25)
                    .padding(.horizontal, 25)
                    .background(Rectangle()).foregroundColor(.white).cornerRadius(15)
                  //  .padding(.top, 50.0)
                    .shadow(radius: 15)
                
             //   Spacer()
                
                VStack{
                    Group {
                        HStack {
                            Text("#")
                            Spacer()
                            Text("       Name")
                            Spacer()
                            Text("Points")
                        }.padding()
                        
                        HStack {
                            Text("1")
                            Spacer()
                            Text("Kayla")
                            Spacer()
                            Text("24")
                        }.padding()
                        
                        HStack {
                            Text("2")
                            Spacer()
                            Text("Precious")
                            Spacer()
                            Text("20")
                        }.padding()
                        
                        Group {
                            HStack {
                                Text("3")
                                
                                Spacer()
                                Text("James")
                                Spacer()
                                Text("18")
                            }.padding()
                        }.foregroundColor(Color("ranking"))
                            .fontWeight(.bold)
                            .shadow(radius: 2)
                        
                        HStack {
                            Text("4")
                            Spacer()
                            Text("Bella")
                            Spacer()
                            Text("14")
                        }.padding()
                        
                        HStack {
                            Text("5")
                            Spacer()
                            Text("Jennifer")
                            Spacer()
                            Text("10")
                        }.padding()
                        
                        HStack {
                            Text("6")
                            Spacer()
                            Text("Vanessa")
                            Spacer()
                            Text("8")
                        }.padding()
                        
                        HStack {
                            Text("7")
                            Spacer()
                            Text("Alice")
                            Spacer()
                            Text("6")
                        }.padding()
                        
                        
                        
                    }.foregroundColor(Color("ranking"))
                        .fontWeight(.bold)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 10)
                        .background(Rectangle().foregroundColor(.white)).cornerRadius(15).padding(.horizontal)
                        .shadow(radius: 10)
                    
                    
                    
                    
                }
                Spacer()
                
                
            }
        }
        
    }
}
                
            
       
            
        
        
        



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
