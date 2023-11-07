//
//  CentreModifier.swift
//  Africa
//
//  Created by Ashish on 25/09/21.
//

import Foundation
import SwiftUI

struct centerModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
