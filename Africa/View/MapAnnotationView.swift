//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Ashish on 23/09/21.
//

import SwiftUI

struct MapAnnotationView: View {
    
    var location: Locations
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 52, height: 52, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 1)
                .frame(width: 49, height: 49, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45, alignment: .center)
                .clipShape(Circle())
        }
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1.0
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    
    static var locations: [Locations] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
