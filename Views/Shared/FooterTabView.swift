//
//  FooterTabView.swift
//  SBLakersClone01
//
//  Created by Sherwood Daniels on 9/14/25.
//


// FooterTabView.swift
import SwiftUI

struct FooterTabView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Home")
            Spacer()
            Text("Tickets")
            Spacer()
            Text("Schedule")
            Spacer()
            Text("Team")
            Spacer()
            Text("More")
            Spacer()
        }
        .padding()
        .background(Color.gray.opacity(0.2))
    }
}
