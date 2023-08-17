//
//  loginSignup.swift
//  kindnessApp
//
//  Created by ken tarsitano on 8/17/23.
//

import SwiftUI

struct loginSignup: View {
    //@Environment(\.managedObjectContext) var context
    
    @State var name: String
    @State var lastInit: String
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background inspired by federicoazzu
                Color("Green")
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(Color("Light Green")) //.white.opacity(0.15)
                Circle()
                    .scale(1.35)
                    .foregroundColor(Color("Pearl"))
                
                VStack {
                    
                    Text("Login/Sign Up")
                        .font(.title)
                        .fontWeight(.bold)
                    HStack {
                        TextField("First Name", text: $name).padding()
                            .background(Color("Light Green"))
                            .cornerRadius(15)
                            .padding()
                        TextField("Last Initial", text: $lastInit).padding()
                            .background(Color("Light Green"))
                            .cornerRadius(15)
                            .padding()
                    }//hstack
                    .padding()
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Submit")
                            .padding() //nav stack
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color("Green"))
                            .cornerRadius(10)
                    }//nav View
                    
                }// vstack
            }//zstack
            
            
        }//nav stack
        .navigationBarHidden(true)
    }//body
}//struct
        /*
        func addName(name: String, lastInit: String) {
            let task = ToDo(context: context)
            task.id = UUID()
            task.name = name
            task.lastInit = lastInit
            
            do {
                try context.save()
            } catch {
                print(error)
            }
            
        }
        
    }
    */
    struct CloginSignup_Previews: PreviewProvider {
        static var previews: some View {
            loginSignup(name: "", lastInit: "")
        }
    }
