//
//  ListView.swift
//  Stores
//
//  Created by Matúš Dalloš on 05.07.2021.
//

import SwiftUI

struct ListView: View {
    //MARK: -PROPERTIES
    @State var pois: [Poi] = []
    
    //MARK: -BODY
    var body: some View {
        NavigationView {
        List{
            ForEach(pois) { poi in
                NavigationLink(destination: PoiDetailView(poi: poi)){
            HStack{
                Image("appstore")
                    .resizable()
                    .clipShape(Circle())

                    .frame(width: 50, height: 50)
                    .cornerRadius(70)
                    //.foregroundColor(.blue)
                    
                VStack{
                    Text(poi.name!)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    Text(poi.address!.full)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }
            }
        } //NAVIGATION_LINK
        } //FOR_EACH
        } //LIST
        .onAppear {
            Api().getPois {(pois) in
                self.pois = pois
            }
            }
            .navigationTitle("List of stores")
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


    // MARK: PREVIEW
struct ListView_Previews: PreviewProvider {
    static var pois: [Poi] = []
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
