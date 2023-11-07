//
//  CopyrightView.swift
//  Africa
//
//  Created by Ashish on 25/09/21.
//

import SwiftUI

struct CopyrightView: View {
    var body: some View {
        VStack {
//            Image("compass")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 125, height: 125)
//
            Text("""
Copyright © ASHISH
All rights reserved
""")
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.3)
    }
}

struct CopyrightView_Previews: PreviewProvider {
    static var previews: some View {
        CopyrightView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
