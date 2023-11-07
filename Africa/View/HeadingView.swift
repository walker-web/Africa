//
//  HeadingView.swift
//  Africa
//
//  Created by Ashish on 22/09/21.
//

import SwiftUI

struct HeadingView: View {
    
    var headingLabel: String
    var headingImage: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingLabel)
                .font(.title2)
                .fontWeight(.bold)
        }
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingLabel: "Wilderness in Pictures", headingImage: "photo.on.rectangle.angled")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
