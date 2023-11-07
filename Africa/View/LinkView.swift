//
//  LinkView.swift
//  Africa
//
//  Created by Ashish on 22/09/21.
//

import SwiftUI

struct LinkView: View {
    
    let animal: Animal
    
    var body: some View {
        Group{
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://en.wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        LinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
