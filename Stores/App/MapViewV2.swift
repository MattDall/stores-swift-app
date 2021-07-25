//
//  MapViewV2.swift
//  Stores
//
//  Created by Matúš Dalloš on 10.07.2021.
//

import SwiftUI
import MapKit

struct City: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}
//  NOT USED, ONLY FOR TESTING PURPOSES
struct MapViewV2: View {
    @State private var cities: [City] = [
            City(coordinate: .init(latitude: 50.10780923355383, longitude:  14.45360207090067)),
            City(coordinate: .init(latitude: 49.19619623633681, longitude: 16.60680429603173)),
            City(coordinate: .init(latitude: 50.20439112017363, longitude: 15.83458971175533)),
            City(coordinate: .init(latitude: 49.73197733788923, longitude: 13.398224275529337)),
        ]
    
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 49.742859, longitude: 15.338412),
            span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        )

    var body: some View {
            Map(coordinateRegion: $region, annotationItems: cities) { city in
                MapPin(coordinate: city.coordinate, tint: .red)
            }
            .edgesIgnoringSafeArea(.all)
        }
    
}

struct MapViewV2_Previews: PreviewProvider {
    static var previews: some View {
        MapViewV2()
    }
}
