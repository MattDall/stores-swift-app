//
//  MapAnnotationView.swift
//  Stores
//
//  Created by Matúš Dalloš on 10.07.2021.
//

import SwiftUI

struct MapAnnotationView: View {
  // MARK: - PROPERTIES
  
  let poiLocation: Poi
  @State private var animation: Double = 0.0
  
  // MARK: - BODY

  var body: some View {
    ZStack {
      Circle()
        .fill(Color.accentColor)
        .frame(width: 54, height: 54, alignment: .center)
      
      Circle()
        .stroke(Color.accentColor, lineWidth: 2)
        .frame(width: 52, height: 52, alignment: .center)
        .scaleEffect(1 + CGFloat(animation))
        .opacity(1 - animation)
      
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 48, height: 48, alignment: .center)
        .clipShape(Circle())
    } //: ZSTACK
    .onAppear {
      withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
        animation = 1
      }
    }
  }
}

// MARK: - PREVIEW
