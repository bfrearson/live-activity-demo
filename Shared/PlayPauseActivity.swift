//
//  PlayPauseActivity.swift
//  LiveActivityDemo
//
//  Created by Ben Frearson on 23/01/2025.
//

import Foundation
import ActivityKit

struct PlayPauseActivity: ActivityAttributes {
    struct ContentState: Codable, Hashable {
        var isPlaying: Bool
    }
}
