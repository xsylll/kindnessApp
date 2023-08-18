//
//  ContentView.swift
//  kindnessApp
//
//  Created by kayla saniei on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var rotation: CGFloat = 0.0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Text("Welcome Back!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .offset(y: -300)
                Image("arrow")
                    .resizable()
                    .frame(width: 40, height: 100)
                    .offset(y: -150)
                Wheel(rotation: $rotation)
                    .frame(width: 350, height: 700)
                    .rotationEffect(.radians(rotation))
                    .animation(.easeInOut(duration: 1.5), value: rotation)
                    .offset(y: 75)
                Button("Spin") {
                    let randomAmount = Double(Int.random(in: 7..<15))
                    rotation += randomAmount
                }
                .font(.title)
                .offset(y: 350)
            }
            .toolbar {
                NavigationLink(destination: SwiftUIView(), label: {
                    Image("leaderboard")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
            }
        }
    }
}


struct Wheel: View {
    
    @Binding var rotation: CGFloat
    
    let segments = ["Invite someone over", "Avoid gossiping", "Start a good habit", "Forgive someone", "Plant a tree", "Be extra kind", "Hold the door open","Help a friend","Give a compliment"]
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                ForEach(segments.indices, id: \.self) { index in
                    ZStack {
                        Circle()
                            .inset(by: proxy.size.width / 5)
                            .trim(from: CGFloat(index) * segmentSize, to: CGFloat(index + 1) * segmentSize)
                            .stroke(Color.all[index], style: StrokeStyle(lineWidth: proxy.size.width / 2))
                            .rotationEffect(.radians(.pi * segmentSize))
                            .opacity(0.3)
                        label(text: segments[index], index: CGFloat(index), offset: proxy.size.width / 3)
                    }
                }
            }
        }
    }
    
    var segmentSize: CGFloat {
        1 / CGFloat(segments.count)
    }
    
    func rotation(index: CGFloat) -> CGFloat {
        (.pi * (2 * segmentSize * (CGFloat(index + 1))))
    }
    
    func label(text: String, index: CGFloat, offset: CGFloat) -> some View {
        Text(text)
            .rotationEffect(.radians(rotation(index: CGFloat(index))))
            .offset(x: cos(rotation(index: index)) * offset, y: sin(rotation(index: index)) * offset)
    }
}

extension Color {
    
    static var all: [Color] {
        [Color.yellow, .green, .pink, .cyan, .mint, .orange, .teal, .indigo, .pink, .cyan, .mint, .orange, .teal, .indigo, .green, .pink, .cyan, .mint, .orange, .teal, .indigo]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
