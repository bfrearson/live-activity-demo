//
//  ContentView.swift
//  LiveActivityDemo
//
//  Created by Ben Frearson on 23/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var activityManager = PlayPauseActivityManager.shared
    
    var body: some View {
        VStack {
            if activityManager.currentActivity == nil {
                Button("start live activity", action: activityManager.startActivity)
            } else {
                Button("Stop live activity", action: activityManager.stopActivity)
            }
            
            Toggle("Play/Pause", isOn: $activityManager.isPlaying)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
