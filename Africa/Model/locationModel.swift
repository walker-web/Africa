//
//  locationModel.swift
//  Africa
//
//  Created by Ashish on 23/09/21.
//

import SwiftUI
import MapKit

struct Locations: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
