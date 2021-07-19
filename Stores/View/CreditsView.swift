//
//  CreditsView.swift
//  Stores
//
//  Created by Matúš Dalloš on 05.07.2021.
//

import SwiftUI

struct CreditsView: View {
  var body: some View {
    VStack {
      Image("UUlogo_white")
        .resizable()
        .scaledToFit()
        .frame(width: 200, height: 150)
      
      Text("""
  Copyright © Matúš Dalloš
  All right reserved
  2021
  """)
        .font(.footnote)
        .multilineTextAlignment(.center)
    } //: VSTACK
    .padding()
    .opacity(1)
  }
}

struct CreditsView_Previews: PreviewProvider {
  static var previews: some View {
    CreditsView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
