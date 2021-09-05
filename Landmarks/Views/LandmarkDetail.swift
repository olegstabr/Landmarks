//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Олег Стабровский on 05.09.2021.
//

import SwiftUI

struct LandmarkDetail: View {
	var landmark: Landmark
	
    var body: some View {
		ScrollView {
			MapView(coordinate: landmark.locationCoordinate)
  				.ignoresSafeArea(edges: .top)
  				.frame(height: DrawingConstants.mapViewHeight)
			CircleImage(image: landmark.image)
  				.offset(y: DrawingConstants.imageOffsetY)
  				.padding(.bottom, DrawingConstants.imageBottomPadding)
  			VStack(alignment: .leading) {
				Text(landmark.name)
  					.font(.title)
					.foregroundColor(.primary)
  				HStack {
					Text(landmark.park)
  					Spacer()
					Text(landmark.state)
  				}
  				.font(.subheadline)
  				.foregroundColor(.secondary)
  				Divider()
				Text("About \(landmark.name)")
  					.font(.title2)
				Text(landmark.description)
  			}
  			.padding()
  		}
		.navigationTitle(landmark.name)
		.navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}

private struct DrawingConstants {
	static let mapViewHeight:CGFloat = 300
	static let imageOffsetY: CGFloat = -130
	static let imageBottomPadding: CGFloat = -130
}
