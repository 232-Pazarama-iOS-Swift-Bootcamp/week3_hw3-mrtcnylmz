//
//  Software.swift
//  iTunes Client App
//
//  Created by Mertcan Yılmaz on 9.10.2022.
//

import Foundation

struct Software: Decodable {
    let artistName: String?
    let trackName: String?
    let artworkLarge: URL?
    let releaseDate: String?
    let description: String?
    let primaryGenreName: String?
    
    enum CodingKeys: String, CodingKey {
        case artistName
        case trackName
        case artworkLarge = "artworkUrl512"
        case releaseDate
        case description
        case primaryGenreName
    }
}
