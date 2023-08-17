//
//  HomePage.swift
//  kindnessApp
//
//  Created by ken tarsitano on 8/17/23.
//

import SwiftUI

struct HomePage: View {
    
    @Environment(\.managedObjectContext) var context

    
    @FetchRequest(
            entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
    var userItems: FetchedResults<ToDo>
    
    var body: some View {
            NavigationView{
                Color("Image Orange").ignoresSafeArea().overlay(

                VStack {
                    
                    HStack {
                        Text("Kindness App")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                            
                        Spacer()
                        Spacer()
                        
                        NavigationLink(destination: loginSignup(name: "", lastInit: "")) {
                            Text("Login/Sign Up")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("Link Orange"))
                            
                        }// nav link
                        Spacer()
                    } // Hstack
                    Spacer()
                    .navigationTitle("Welcome Page")
                    .navigationBarTitleDisplayMode(.large)
                    .navigationBarHidden(true)
                

                
                Image("chooseKindBG")
                    .resizable()
                    .frame(width: 400, height: 400, alignment: .center)
                    .padding(.bottom, 70.0)
                    .padding()
                    
                Spacer()
                Spacer()
                }// VStack
                
                )
            }// nav stack
            .navigationBarHidden(true)
            
        
    } // body
    
} // struct

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
