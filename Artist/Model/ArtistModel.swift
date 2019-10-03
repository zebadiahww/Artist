//
//  ArtistModel.swift
//  Artist
//
//  Created by Zebadiah Watson on 10/2/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

import Foundation

struct callback: Codable {
    let message: Message
}
struct Message: Codable {
    let body: Body
}

struct Body: Codable {
    
    private enum CodingKeys: String, CodingKey{
        case artistList = "artist_list"
    }
    
    let artistList: [secondLevelDictionary]
}


struct secondLevelDictionary: Codable {
    let artist: artist 
}

struct artist: Codable {
    
    private enum CodingKeys: String, CodingKey {
        case artistID = "artist_id"
        case artistName = "artist_name"
        case artistCountry = "artist_country"
        
    }
    
    
    let artistID: Int
    let artistName: String
    let artistCountry: String
}
