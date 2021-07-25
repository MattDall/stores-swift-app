//
//  PoiDetailView.swift
//  Stores
//
//  Created by Matúš Dalloš on 07.07.2021.
//

import SwiftUI
import MapKit


struct PoiDetailView: View {
    //MARK: - PROPERTIES
   // @State var pois: [Poi] = []
    let poi: Poi
    
    //MARK: -BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
        VStack(alignment: .center, spacing: 20) {
            //HEADER IMAGE
            Image(poi.image!)
                .resizable()
                .scaledToFit()
                .cornerRadius(0)
                .padding(.vertical, 0)
        
            
            //ADDRESS
            Text("Address")
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(1)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
            Text(poi.address!.full)
            
            
            //CONTACT
            Text("Contacts")
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(1)
                .multilineTextAlignment(.leading)
            Group{
                HStack(spacing: 10) {
                    Text("Phone:")
                        .font(.body)
                        .fontWeight(.semibold)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                    Text(poi.phone!)
                        .font(.body)
                        .fontWeight(.light)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                }
                HStack(spacing: 10) {
                    Text("E-mail:")
                        .font(.body)
                        .fontWeight(.semibold)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                    Text(poi.email!)
                        .font(.body)
                        .fontWeight(.light)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                }
            }
            
            //LOCATION - MAP
            Text("Location")
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(1)
                .multilineTextAlignment(.leading)
            
            Group{
                smallMapView(poi: poi)
                    .frame(height: 200)
                    .cornerRadius(12)
            }
        }
        .navigationBarTitle(poi.name!, displayMode: .inline)
    } //SCROLL VIEW
        } //NAVIGATION
    }

}
