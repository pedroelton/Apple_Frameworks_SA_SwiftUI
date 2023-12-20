//
//  FrameworkGridView.swift
//  Apple_Frameworks
//
//  Created by Pedro Oliveira on 2023/12/20.
//

import SwiftUI

struct FrameworkGridView: View {
      // MARK: - GRID LAYOUT

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
      // MARK: - GRID ITEMS in LAZY GRID
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
        }
    }
}

#Preview {
    FrameworkGridView()
}


  // MARK: - COMPONENTS

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack(spacing:8) {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
