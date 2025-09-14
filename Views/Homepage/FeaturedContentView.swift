//
//  FeaturedContentView.swift
//  SBLakersClone01
//
//  Created by Sherwood Daniels on 9/14/25.
//


import SwiftUI

struct FeaturedContentView: View {
    var body: some View {
        Text("Featured")
            .font(.largeTitle)
            .foregroundColor(.red)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
    }
}

#Preview {
    FeaturedContentView()
}
