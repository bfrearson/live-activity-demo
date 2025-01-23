//
//  AppIntent+Extension.swift
//  LiveActivityDemo
//
//  Created by Ben Frearson on 23/01/2025.
//

import AppIntents

// Placeholder to allow widget extension to compile. Intent
 extension PlayPauseIntent: LiveActivityIntent, @unchecked Sendable {
     func perform() async throws -> some IntentResult {
         PlayPauseActivityManager.shared.togglePlayPause()
         return .result()
     }
}
