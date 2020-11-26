//
//  Platforms.swift
//  GaminHood
//
//  Created by Luis Villanueva on 26/11/20.
//

import Foundation
import Alamofire

class Platforms : Codable {
    
    let checksum : UUID?
    let platform_logo : UUID?
    let name : String?
    
    enum CodingKeys: String, CodingKey {
        
        case platform_logo
        case checksum
        case name
    }
}
