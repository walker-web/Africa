//
//  MapView.swift
//  Africa
//
//  Created by Ashish on 21/09/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var locationCoordinate = CLLocationCoordinate2D(latitude: 20.5937, longitude: 78.9629)
        var zoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: locationCoordinate, span: zoomLevel)
        
        return mapRegion
    }()
    
    let Location: [Locations] = Bundle.main.decode("locations.json")
    
    var body: some View {
        // MARK:- 1. BASIC MAP
        //        Map(coordinateRegion: $region)
        
        // MARK:- 2. ADVANCE MAP
        Map(coordinateRegion: $region, annotationItems: Location, annotationContent: { item in
            // MARK:- (A) Simple Pin
            //            MapPin(coordinate: item.location, tint: .accentColor)
            
            // MARK:- (B) Marker
            //            MapMarker(coordinate: item.location, tint: .accentColor)
            
            // MARK:- (C) Custom Basic Annotation
            //            MapAnnotation(coordinate: item.location) {
            //                Image("logo")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 30, height: 30)
            //            }
            
            // MARK:- (D) Custom Advance Annotation
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        })
            .overlay(
                HStack(alignment: .center, spacing: 12) {
                    Image("compass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 49, height: 49, alignment: .center)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        HStack{
                            Text("Latitude")
                                .font(.footnote)
                                .foregroundColor(.accentColor)
                                .fontWeight(.heavy)
                            Spacer()
                            Text("\(region.center.latitude)")
                        }
                        
                        Divider()
                        
                        HStack{
                            Text("Longitude")
                                .font(.footnote)
                                .foregroundColor(.accentColor)
                                .fontWeight(.heavy)
                            Spacer()
                            Text("\(region.center.longitude)")
                        }

                    }
                }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                    .background(
                        Color.black
                            .cornerRadius(10)
                            .opacity(0.65)
                    )
                    .padding()
                , alignment: .top
            )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
