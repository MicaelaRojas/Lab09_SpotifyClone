//
//  Spotify+String.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class HelperString {
    
    static let imageProfileLink = "https://i.scdn.co/image/ab6775700000ee8506ad1b56ba6cdc05be34aabc"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
}
