//
//  PoiRowView.swift
//  Stores
//
//  Created by Matúš Dalloš on 05.07.2021.
//

import SwiftUI

struct PoiRowView: View {
    //MARK: -PROPERTIES
    var poi: Poi
    
    //MARK: -BODY
    var body: some View {
            HStack{
                Image("STANDARD")
                    .resizable()
                    .colorMultiply(.black)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth:7))
                    .frame(width: 50, height: 50)
                    .cornerRadius(70)
                    //.foregroundColor(.blue)
                    
                VStack{
                    Text(poi.name!).font(.headline)
                    Text(poi.address!.full).font(.subheadline)
                }
            }
        }
}

    // MARK: -PREVIEW
//struct PoiRowView_Previews: PreviewProvider {
//    static var preview: some View {
//        PoiRowView(List(poi: Poi))
//        }
//    }
