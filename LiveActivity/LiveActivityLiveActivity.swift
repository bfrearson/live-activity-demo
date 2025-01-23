//
//  LiveActivityLiveActivity.swift
//  LiveActivity
//
//  Created by Ben Frearson on 23/01/2025.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct LiveActivityLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: PlayPauseActivity.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Toggle("Is playing", isOn: context.state.isPlaying, intent: PlayPauseIntent())
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Toggle("Is playing", isOn: context.state.isPlaying, intent: PlayPauseIntent())                    // more content
                }
            } compactLeading: {
                Text("Is Playing:")
            } compactTrailing: {
                Text("\(context.state.isPlaying)")
            } minimal: {
                Text("\(context.state.isPlaying)")
            }
            .keylineTint(Color.red)
        }
    }
}
