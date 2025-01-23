//
//  AppIntent+Extension.swift
//  LiveActivityDemo
//
//  Created by Ben Frearson on 23/01/2025.
//

import AppIntents

// Placeholder to allow widget extension to compile.
// Per Apple's docs, `LiveActivityIntent` is onyl ever called from the main app
// so this will never actually be called
 extension PlayPauseIntent: LiveActivityIntent, @unchecked Sendable {
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
