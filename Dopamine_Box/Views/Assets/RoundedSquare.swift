//
//  RoundedSquare.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 17/01/2021.
//

import SwiftUI

struct RoundedSquare: View {
	var body: some View {
		RoundedRectangle(cornerRadius: 35, style: .continuous)
			.fill(LinearGradient(
							gradient: Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
							startPoint: UnitPoint(x: 0.5, y: 0),
							endPoint: UnitPoint(x: 0.5, y: 0.6)
						))
			.frame(width: 200, height: 200)
			
	}

	static let gradientStart = Color(red: 112.0 / 255, green: 174.0 / 255, blue: 152.0 / 255)
	static let gradientEnd = Color(red: 56.0 / 255, green: 144.0 / 255, blue: 143.0 / 255)
}

struct RoundedSquare_Previews: PreviewProvider {

	static var previews: some View {
		RoundedSquare()
			.environmentObject(Library())
	}
}
