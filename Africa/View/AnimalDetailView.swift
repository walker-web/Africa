//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Ashish on 22/09/21.
//

import SwiftUI
import MapKit

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 25)
                    )
                
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    .foregroundColor(.accentColor)
                
                
                Group {
                    HeadingView(headingLabel: "Wilderness in Pictures", headingImage: "photo.on.rectangle.angled")
                }
                .padding(.horizontal)
                
                
                InsertGalleryView(animal: animal)
                
                Group{
                    HeadingView(headingLabel: "Did you know?", headingImage: "questionmark.circle")
                    InsertFactView(animal: animal)
                }
                
                
                Group{
                    HeadingView(headingLabel: "All about \(animal.name)", headingImage: "info.circle")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    
                }
                .padding(.horizontal)
                
                
                Group{
                    HeadingView(headingLabel: "National Parks", headingImage: "map")
                    InsertMapView()
                }
                .padding(.horizontal)
                
                
                Group{
                    HeadingView(headingLabel: "Learn More", headingImage: "books.vertical")
                    LinkView(animal: animal)
                }
                .padding(.horizontal)
                
            }
            .navigationBarTitle("Learn About \(animal.name)", displayMode: .inline)
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
