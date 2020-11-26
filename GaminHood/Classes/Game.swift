//
//  Game.swift
//  GaminHood
//
//  Created by Luis Villanueva on 26/11/20.
//

import Foundation
import Alamofire

class Game : Codable {
    
    let checksum : UUID?
    let name: String?
    let first_release_date: Date?
    let summary: String?
    let platform: UUID?
    
    enum CodingKeys: String, CodingKey {
        case name
        case first_release_date
        case summary
        case platform
        case checksum
        
    }
}
