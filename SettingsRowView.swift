//
//  SettingsRowView.swift
//  Log in page1
//
//  Created by Ronit Suchak on 03/06/2025.
//

import SwiftUI

struct SettingsRowView: View {
    let imageName: String
    let title: String
    let tintColor: Color
    var body: some View {
        HStack(spacing: 12){
            
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(tintColor)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
            
            
        }
    }
}

#Preview {
    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
}
