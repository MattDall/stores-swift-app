//
//  ContentView.swift
//  Stores
//
//  Created by Matúš Dalloš on 03.07.2021.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  
  @State var pois: [Poi] = []
  let haptics = UIImpactFeedbackGenerator(style: .medium)
    
  //: MARK - FUNCTIONS

  var body: some View {
    
    // MARK: - BODY
    
    NavigationView {
      Group {
          List {
            CoverImageView()
              .frame(height: 300)
              .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Spacer ()
            InfoView()
            
            CreditsView()
              .modifier(CenterModifier())
          } //: LIST
      } //: GROUP
      .navigationBarTitle("Home", displayMode: .large)
      .onAppear {
          Api().getPois{(pois) in
              self.pois = pois
          }
      }
    } //: NAVIGATION
  }
}
// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone 12 Pro")
  }
}
