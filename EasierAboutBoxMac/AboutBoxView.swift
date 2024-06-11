//
//  AboutBoxView.swift
//  WindowGroupTest
//
//  Created by Eric Kampman on 6/11/24.
//

import SwiftUI

struct AboutBoxView: View {
	@Environment(\.openWindow) private var openWindow

    var body: some View {
		VStack {
			Text("About !")
			Image(systemName:"info.square")
				.resizable()
				.frame(width: 100, height: 100)
		}
		.padding()
    }
}

#Preview {
    AboutBoxView()
}
