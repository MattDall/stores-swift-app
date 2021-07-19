//
//  CenterModifier.swift
//  Stores
//
//  Created by Matúš Dalloš on 05.07.2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
