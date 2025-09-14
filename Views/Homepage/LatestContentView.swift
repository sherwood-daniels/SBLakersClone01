//
//  LatestContentView.swift
//  SBLakersClone01
//
//  Created by Sherwood Daniels on 9/14/25.
//


import SwiftUI

struct LatestContentView: View {
    var body: some View {
        Text("Latest")
            .font(.largeTitle)
            .foregroundColor(.red)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
    }
}

#Preview {
    LatestContentView()
}
