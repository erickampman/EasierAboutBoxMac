//
//  EasierAboutBoxMacApp.swift
//  EasierAboutBoxMac
//
//  Created by Eric Kampman on 6/11/24.
//

import SwiftUI

@main
struct EasierAboutBoxMacApp: App {
	@Environment(\.openWindow) private var openWindow

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
		.commands {
			CommandGroup(replacing: CommandGroupPlacement.appInfo) {
				Button(action: {
					openWindow(id: "About") // Match the group's identifier.
				}) {
					Text("About !")
				}
			}
		}

		WindowGroup(id: "About") {
			AboutBoxView()
		}

    }
}
