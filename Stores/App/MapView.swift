//
//  MapView.swift
//  Stores
//
//  Created by Matúš Dalloš on 04.07.2021.
//

import SwiftUI
import MapKit
import struct CoreLocation.CLLocationCoordinate2D
import class CoreLocation.CLCircularRegion
import class CoreLocation.CLLocation

//MARK - HEADER

// MARK - PROPERTIES

struct MapView: View {
    
    private let mapView = MKMapView()
    
    @State var pois: [Poi] = []

    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 49.742859, longitude: 15.338412)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 7.0, longitudeDelta: 7.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)

        return mapRegion
    }()

// MARK - BODY
  //  map.showsUserLocation = true
    var body: some View {
        //MARK: N1
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                     Api().getPois {(pois) in
                        self.pois = pois
                     }
            }
        ForEach(pois) { poi in
            NavigationLink(destination: PoiDetailView(poi: poi)){
           // MapViewController(poi: poi)
        }
        }
} //: VIEW
} //: MAPVIEW

// MARK - PREVIEW
//struct MapView_Previews: PreviewProvider {
//    static var pois: [Poi] = []
//    static var previews: some View {
//        MapView()
//    }
//}
