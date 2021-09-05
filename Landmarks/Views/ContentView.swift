//
//  ContentView.swift
//  Landmarks
//
//  Created by Олег Стабровский on 05.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack {
			MapView()
				.ignoresSafeArea(edges: .top)
				.frame(height: DrawingConstants.mapViewHeight)
			CircleImage()
				.offset(y: DrawingConstants.imageOffsetY)
				.padding(.bottom, DrawingConstants.imageBottomPadding)
			VStack(alignment: .leading) {
				Text("Turtle Rock")
					.font(.title)
				HStack {
					Text("Joshua Tree National Park")
					Spacer()
					Text("California")
				}
				.font(.subheadline)
				.foregroundColor(.secondary)
				Divider()
				Text("About Turtle Rock")
					.font(.title2)
				Text("Descriptive text goes here.")
			}
			.padding()
			Spacer()
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private struct DrawingConstants {
	static let mapViewHeight:CGFloat = 300
	static let imageOffsetY: CGFloat = -130
	static let imageBottomPadding: CGFloat = -130
}