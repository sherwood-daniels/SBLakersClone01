//
//  FooterMenuView.swift
//  SBLakersClone01
//
//  Created by Sherwood Daniels on 9/14/25.
//


import SwiftUI

struct FooterMenuView: View {
    @Binding var selectedFooter: FooterSection

    var body: some View {
        HStack {
            ForEach(FooterSection.allCases, id: \.self) { section in
                Text(section.rawValue.capitalized)
                    .padding()
                    .foregroundColor(selectedFooter == section ? .blue : .gray)
                    .onTapGesture {
                        selectedFooter = section
                    }
            }
        }
        .background(Color.gray.opacity(0.2))
    }
}

#Preview {
    FooterMenuView(selectedFooter: .constant(.home))
}
