//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Олег Стабровский on 05.09.2021.
//

import SwiftUI

struct LandmarkList: View {
	var body: some View {
		NavigationView {
			List(landmarks) { landmark in
				NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
					LandmarkRow(landmark: landmark)
				}
			}
			.navigationTitle("Landmarks")
		}
	}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
