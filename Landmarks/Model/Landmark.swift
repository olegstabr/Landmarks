//
//  Landmark.swift
//  Landmarks
//
//  Created by Олег Стабровский on 05.09.2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
	struct Coordinates: Hashable, Codable {
		var latitude: Double
		var longitude: Double
	}
	
	var id: Int
	var name: String
	var category: String
	var city: String
	var state: String
	var isFeatured: Bool
	var isFavorite: Bool
	var park: String
	var description: String
	private var imageName: String
	var image: Image {
		Image(imageName)
	}
	private var coodinates: Coordinates
	var location: CLLocationCoordinate2D {
		CLLocationCoordinate2D(latitude: coodinates.latitude, longitude: coodinates.longitude)
	}
}
