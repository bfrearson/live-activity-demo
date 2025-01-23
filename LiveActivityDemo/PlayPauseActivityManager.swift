//
//  PlayPauseActivityManager.swift
//  LiveActivityDemo
//
//  Created by Ben Frearson on 23/01/2025.
//

import Foundation
import ActivityKit

@Observable class PlayPauseActivityManager {
    static var shared: PlayPauseActivityManager = .init()
    
    var isPlaying: Bool = false
    var currentActivity: Activity<PlayPauseActivity>?
    
    private init () {}
    
    func startActivity() {
        let activity = PlayPauseActivity()
        isPlaying = true
        let contentState = PlayPauseActivity.ContentState(isPlaying: isPlaying)
        
        currentActivity = try? Activity.request(attributes: activity, content: .init(state: contentState, staleDate: .now.advanced(by: 60)))
    }
    
    func stopActivity() {
        guard let activity = currentActivity else {
            return
        }
        Task {
            await activity.end(.init(state: .init(isPlaying: isPlaying), staleDate: nil))
            currentActivity = nil
        }
    }
    
    func updateActivity() {
        guard let activity = currentActivity else {
            return
        }
        
        Task {
            await activity.update(.init(state: .init(isPlaying: isPlaying), staleDate: nil))
        }
    }
    
    func togglePlayPause() {
        isPlaying.toggle()
        updateActivity()
    }
}
