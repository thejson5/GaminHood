//
//  Franchise.swift
//  GaminHood
//
//  Created by Luis Villanueva on 26/11/20.
//

import Foundation
import Alamofire

class Franchise: Codable {
    
    let checksum: UUID?
    let games: [PackGame]
    
    enum CodingKeys: String, CodingKey {
        
        case checksum
        case games
    }
}
