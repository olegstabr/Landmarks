//
//  MapView.swift
//  Landmarks
//
//  Created by Олег Стабровский on 05.09.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
	var coordinate: CLLocationCoordinate2D
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
			.onAppear {
				setRegion(coordinate)
			}
    }
	
	private func setRegion(_ coordinate: CLLocationCoordinate2D) {
		region =
			MKCoordinateRegion(
				center: CLLocationCoordinate2D(
					latitude: coordinate.latitude,
					longitude: coordinate.latitude
				),
				span: MKCoordinateSpan(
					latitudeDelta: MapConstants.latitudeDelta,
					longitudeDelta: MapConstants.longitudeDelta
				)
			)
	}
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}

private struct MapConstants {
	static let latitudeDelta = 0.2
	static let longitudeDelta = 0.2
}
