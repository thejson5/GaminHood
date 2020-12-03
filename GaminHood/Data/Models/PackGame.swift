//
//  PackGame.swift
//  GaminHood
//
//  Created by Rober Garrido on 2/12/20.
//

import Foundation

typealias Packs = [PackGame]

struct PackGame: Codable {
    var id: Int
    var coverPack: String
    var game: Game
    var firstReleaseDate: Date
    var summary: String
    var platform: Platforms
    var category: Categories
    var players: Players
    var status: Status
    var pegi: Pegi
    var publisher: Publishers
    var developer: Developers
    var metacritics: String
 
    
}

enum Status: Int, Codable, CustomStringConvertible {
    case available = 0
    case comingSoon
    
    var description: String {
        switch self {
        case .available: return "Available"
        case .comingSoon: return "Coming soon"
        }
    }
    
}

enum Platforms: Int, Codable {
    case ps2 = 0
    case ps3
    case ps4
    case ps5
    case gameCube
    case wiiU
    case nintendoWii
    case nintendoDs
    case nintendo3Ds
    case gameBoyAdvance
    case nintendoSwitch
    case xbox
    case xbox360
    case xboxOne
    case xboxSeries
    case pc
    case gameGear
    case dreamcast
    case mobile
    case stadia
    case javaME
    case psp
    case psVita
   
    var platformNames: String {
        switch self {
        case .ps2: return "PS2"
        case .ps3: return "PS3"
        case .ps4: return "PS4"
        case .ps5: return "PS5"
        case .gameCube: return "Game Cube"
        case .wiiU: return "Wii U"
        case .nintendoWii: return "Nintendo Wii"
        case .nintendoDs: return "Nintendo DS"
        case .nintendo3Ds: return "Nintendo 3DS"
        case .gameBoyAdvance: return "Game Boy Advance"
        case .nintendoSwitch: return "Nintendo Switch"
        case .xbox: return "XBOX"
        case .xbox360: return "XBOX 360"
        case .xboxOne: return "XBOX One"
        case .xboxSeries: return "XBOX Series"
        case .pc: return "Microsoft Windows"
        case .gameGear: return "Game Gear"
        case .dreamcast: return "Dreamcast"
        case .mobile: return "Mobile"
        case .stadia: return "Stadia"
        case .javaME: return "Java ME"
        case .psp: return "PSP"
        case .psVita: return "PS Vita"
        }
    }
}

enum Categories: Int, Codable {
    case action = 0
    case rpg
    case survivalHorror
    case online
    case fps
    case kids
    case sports
    case adventure
    case party
    case socialDeduction
    case platformer
    
    var categoriesNames: String {
        switch self {
        case .action: return "Action"
        case .rpg: return "RPG"
        case .survivalHorror: return "Survival Horror"
        case .online: return "Online"
        case .fps: return "FPS"
        case .kids: return "Kids"
        case .sports: return "Sports"
        case .adventure: return "Adventure"
        case .party: return "Party"
        case .socialDeduction: return "Social Deduction"
        case .platformer: return "Platformer"
        }
    }
}

enum Players: Int, Codable {
    case singlePlayer = 0
    case multiPlayer
}

enum Pegi: Int, Codable {
    case allAges = 0
    case seven
    case tirtheen
    case eighteen
    case twentyOne
    
    var pegiReferences: String {
        switch self {
        case .allAges: return "All Ages"
        case .seven: return "+ 7"
        case .tirtheen: return "+ 13"
        case .eighteen: return "+ 18"
        case .twentyOne: return "+ 21"
        }
    }
}

enum Publishers: Int, Codable {
    case nintendo = 0
    case bethesda
    case electronicArts
    case microsoft
    case sony
    case innerSloth
    case cdProjektRed
    case activision
    
    var publishersName: String {
        switch self {
        case .nintendo: return "Nintendo"
        case .bethesda: return "Bethesda"
        case .electronicArts: return "Electronic Arts"
        case .microsoft: return "Microsoft"
        case .sony: return "Sony"
        case .innerSloth: return "Inner Sloth"
        case .cdProjektRed: return "CD Projekt RED"
        case .activision: return "Activision"
        }
    }
}

enum Developers: Int, Codable {
    case nintendo = 0
    case bethesda
    case eaSports
    case remedyEnt
    case naughty
    case cdProjekt
    case innerSloth
    case treyarch
    case eaDice
    case guerrillaGames
    case sieSantaMonica
    
    var developersName: String {
        switch self {
        case .nintendo: return "Nintendo"
        case .bethesda: return "Bethesda"
        case .eaSports: return "EA Sports"
        case .remedyEnt: return "Remedy Entert."
        case .naughty: return "Naughty Dog"
        case .innerSloth: return "Inner Sloth"
        case .cdProjekt: return "CD Projekt RED"
        case .treyarch: return "Treyarch Raven Software"
        case .eaDice: return "EA DICE"
        case .guerrillaGames: return "Guerrilla Games"
        case .sieSantaMonica: return "SIE Santa Monica"
        }
    }
}


