//
//  ContentView.swift
//  kindnessApp
//
//  Created by kayla saniei on 8/15/23.
//

import SwiftUI
struct Pie: Shape {
    var startAngle : Angle
    var endAngle : Angle
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let start = CGPoint(
            x: center.x + radius * cos(CGFloat(startAngle.radians)),
            y: center.y + radius * sin(CGFloat(startAngle.radians))
        )
        var path = Path()
        path.move(to: center)
        path.addLine(to: start)
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        return path
    }
}
struct ContentView: View {
    let colors: [Color] = [.blue, .red, .purple, .orange, .blue, .red, .purple, .orange, .blue, .red, .purple, .orange, .blue, .red, .purple, .orange, .blue, .red, .purple, .orange]
    @State var spin :Double = 0
    @State var count = 20
    var body: some View {
        VStack {
            Text("Welcome Back!")
                .font(.largeTitle)
                .fontWeight(.bold)
            ZStack{
                ForEach(0..<count, id: \.self) { index in Pie(startAngle:
                        .degrees(Double(index) / Double(count) * 360), endAngle:
                        .degrees(Double(index + 1) / Double(count) * 360))
                        .fill(colors[index % colors.count])
                }
            }
            .rotationEffect(.degrees(spin))
            
            // Spacer()
            Button {
                withAnimation(.spring(response: 12, dampingFraction: 2.5)) {
                    spin += 2160
                }
            } label: {
                Text("Spin")
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
