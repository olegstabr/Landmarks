//
//  MapView.swift
//  Landmarks
//
//  Created by Олег Стабровский on 05.09.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
	@State private var region =
		MKCoordinateRegion(
			center: CLLocationCoordinate2D(
				latitude: 34.011_286,
				longitude: -116.166_868
			),
			span: MKCoordinateSpan(
				latitudeDelta: MapConstants.latitudeDelta,
				longitudeDelta: MapConstants.longitudeDelta
			)
		)
	
    var body: some View {
		Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

private struct MapConstants {
	static let latitudeDelta = 0.2
	static let longitudeDelta = 0.2
}
