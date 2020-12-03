//
//  Game.swift
//  GaminHood
//
//  Created by Luis Villanueva on 26/11/20.
//

import Foundation

struct Game : Codable {
    var id: Int
    var name: String
    var screenshots: [String]
    var coverImage: [String]
}
