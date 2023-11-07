//
//  MotionEffectView.swift
//  Africa
//
//  Created by Ashish on 23/09/21.
//

import SwiftUI

struct MotionEffectView: View {
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 15...300)
    }
    
    func randomScale() -> CGFloat {
        return CGFloat.random(in: 0.1...2.4)
    }
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.020...0.901)
    }
    
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(x: randomCoordinate(max: geometry.size.width)
                                  ,y: randomCoordinate(max: geometry.size.height))
                        .animation(Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                    .repeatForever()
                                    .speed(randomSpeed())
                                    .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        })
                }
//                Text("Width: \(Int(geometry.size.width)), Height: \(Int(geometry.size.height))")
            }
            .drawingGroup()
        }
    }
}

struct MotionEffectView_Previews: PreviewProvider {
    static var previews: some View {
        MotionEffectView()
    }
}
