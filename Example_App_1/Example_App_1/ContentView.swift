//
//  ContentView.swift
//  Example_App_1
//
//  Created by Ахмеров Дмитрий Николаевич on 16.02.2024.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		Group {
			VerticalContentView()
			HorizontalContentView()
		}
	}
}

struct VerticalContentView: View {
	var body: some View {
		VStack {
			VStack {
				Image(systemName: "arrow.down")
					.imageScale(.large)
					.foregroundColor(.accentColor)
				Image(systemName: "arrow.down")
					.imageScale(.large)
					.foregroundColor(.accentColor)
				Image(systemName: "arrow.down")
					.imageScale(.large)
					.foregroundColor(.accentColor)
			}
			Text("Этот экран отрисовывается вертикально")
		}
		.padding()
	}
}

struct HorizontalContentView: View {
	var body: some View {
		VStack {
			HStack {
				Image(systemName: "arrow.right")
					.imageScale(.large)
					.foregroundColor(.accentColor)
				Image(systemName: "arrow.right")
					.imageScale(.large)
					.foregroundColor(.accentColor)
				Image(systemName: "arrow.right")
					.imageScale(.large)
					.foregroundColor(.accentColor)
			}
			Text("Этот экран отрисовывается горизонтально")
		}
		.padding()
	}
}

struct PreviewProviderPortraitContentView: PreviewProvider {
	static var previews: some View {
		Group {
			VerticalContentView()
				.previewInterfaceOrientation(.portrait)

			HorizontalContentView()
				.previewInterfaceOrientation(.landscapeRight)
		}
	}
}
