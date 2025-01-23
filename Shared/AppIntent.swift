//
//  PlayPauseIntent.swift
//  LiveActivityDemo
//
//  Created by Ben Frearson on 23/01/2025.
//

import AppIntents

struct PlayPauseIntent: LiveActivityIntent {
    static var title: LocalizedStringResource = "Play or pause the activity"
    
    func perform() async throws -> some IntentResult {
        PlayPauseActivityManager.shared.togglePlayPause()
        return .result()
    }
    
}
