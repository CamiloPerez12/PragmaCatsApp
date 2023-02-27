//
//  CatsModel.swift
//  PragmaCatsApp
//
//  Created by jonathan.perez on 26/02/23.
//

import Foundation

struct Cats: Codable{
    
    let Cats: [CatsModel]
    
    enum CodingKeys: String, CodingKey {
        case Cats = ""
    }
    
}


struct CatsModel : Codable {
    
    let breedName: String
    let origin: String
    let affectionLevel: Int
    let intelligence: Int
    let imageUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case breedName = "name"
        case origin = "origin"
        case affectionLevel = "affection_level"
        case intelligence = "intelligence"
        case imageUrl = "reference_image_id"
    }
    
}
