Here's a demo of a SwiftUI Live Activity that uses an app intent to modify an in-memory property of the main app target. All of Apple's examples only showed modifying a shard data source, but it seems vital to me that a live activity would want to modify state in the main app (e.g. play/pause, etc).

There's a writeup of this at [my blog](https://bfrearson.github.io/blog/ios-live-activties/) if you're interested in more details, and credit goes to [this forum discussion](https://developer.apple.com/forums/thread/731852) for the initial solution!
