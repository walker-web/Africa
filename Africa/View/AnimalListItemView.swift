//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Ashish on 21/09/21.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animalList: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Image(animalList.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 9) {
                Text(animalList.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animalList.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animalList: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
