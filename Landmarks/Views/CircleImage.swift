//
//  CircleImage.swift
//  Landmarks
//
//  Created by Олег Стабровский on 05.09.2021.
//

import SwiftUI

struct CircleImage: View {
	var image: Image
	
    var body: some View {
		image
			.clipShape(Circle())
			.overlay(Circle().stroke(DrawingConstants.strokeColor, lineWidth: DrawingConstants.lineWidth))
			.shadow(radius: DrawingConstants.shadowRadius)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}

private struct DrawingConstants {
	static let strokeColor = Color.white
	static let lineWidth: CGFloat = 5
	static let shadowRadius: CGFloat = 9
}
