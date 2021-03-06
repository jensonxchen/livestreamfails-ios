//
//  Models.swift
//  LiveStreamFails
//
//  Created by Jenson Chen on 2019-03-28.
//  Copyright © 2019 Jenson Chen. All rights reserved.
//

import Foundation

class Streamer: NSObject {
    var name: String = ""
    var avatarURL: String = ""
    var twitchURL: String = ""
    
    public var descriptionInfo: String {
        return "Streamer(name: \(name), avatarURL: \(avatarURL), twitchURL: \(twitchURL))"
    }
}

class Post: NSObject {
    var postID: String = ""
    var name: String = ""
    var streamerID: String = ""
    var streamer: String = ""
    var gameID: String = ""
    var game: String = ""
    var thumbnailURL: String = ""
    
    var point: String = ""
    var date: String = ""
    
    public var descriptionInfo: String {
        return "Post(postID: \(postID), name: \(name), streamer: \(streamer) [\(streamerID)], game: \(game) [\(gameID)], thumbnailURL: \(thumbnailURL), point: \(point), date: \(date))"
    }
}

class PostDetail: NSObject {
    var post: Post?
    var videoURL: String = ""
    
    public var descriptionInfo: String {
        return "PostDetail(post: \(post?.descriptionInfo ?? ""), videoURL: \(videoURL))"
    }
}
