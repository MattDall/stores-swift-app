//
//  test.swift
//  Stores
//
//  Created by Matúš Dalloš on 10.07.2021.
//

import SwiftUI
import MapKit

struct test: UIViewRepresentable {
    let poi: Poi
    
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        
        view.mapType = MKMapType.standard // (satellite)
        
        
        let latitude = (poi.location.latitude)
        let longitude = (poi.location.longitude)
        
        let location = CLLocationCoordinate2D(
            latitude: Double(latitude), longitude: Double(longitude))

        let coordinate = CLLocationCoordinate2D(
            latitude: Double(latitude), longitude: Double(longitude))
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
            view.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
           // annotation.coordinate = CLLocationCoordinate2D(latitude: Double(latitude), longitude: Double(longitude))
        annotation.coordinate = location
        annotation.title = poi.name
        view.addAnnotation(annotation)

    }
}
