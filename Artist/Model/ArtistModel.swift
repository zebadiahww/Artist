//
//  ArtistModel.swift
//  Artist
//
//  Created by Zebadiah Watson on 10/2/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

import Foundation

struct Callback {
    let message: Message
}

struct Message {
    let body: Body
}

struct Body {
    
    private enum CodingKeys: String, CodingKey{
        case artistList = "artist_list"
    }
    
    let artistList: ArtistList
}

struct ArtistList {
    let artist: Artist
}

struct Artist {
    
    private enum CodingKeys: String, CodingKey {
        case artistID = "artist_id"
        case artistName = "artist_name"
        case artistCountry = "artist_country"
        
    }
    
    
    let artistID: Int
    let artistName: String
    let artistCountry: String
}
