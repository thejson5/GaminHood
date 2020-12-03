//
//  Platform_logo.swift
//  GaminHood
//
//  Created by Luis Villanueva on 26/11/20.
//

import Foundation
import Alamofire

class Platform_logo : Codable {
    
    let checksum : UUID?
    let image_id : String?
    
    enum CodingKeys: String, CodingKey {
        case image_id
        case checksum
    }
}
