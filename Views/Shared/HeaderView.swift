//
//  HeaderView.swift
//  SBLakersClone01
//
//  Created by Sherwood Daniels on 9/14/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "bell")
            Spacer()
        }
        .padding()
        .background(Color.purple)
    }
}
