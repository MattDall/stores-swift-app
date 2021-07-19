//
//  InfoView.swift
//  Stores
//
//  Created by Matúš Dalloš on 08.07.2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Text("Welcome")
                .font(.title)
                .fontWeight(.semibold)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            Text("This application was created as part of the bachelor thesis.")
                .font(.body)
                .fontWeight(.light)
                .lineLimit(3)
                .multilineTextAlignment(.center)
        
            HStack(spacing: 10) {
                Text("Author:")
                    .font(.body)
                    .fontWeight(.semibold)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                Text("Matúš Dalloš")
                    .font(.body)
                    .fontWeight(.light)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
            }
            HStack(spacing: 10) {
                Text("Year:")
                    .font(.body)
                    .fontWeight(.semibold)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                Text("2021")
                    .font(.body)
                    .fontWeight(.light)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
