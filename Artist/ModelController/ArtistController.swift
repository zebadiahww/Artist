//
//  ArtistController.swift
//  Artist
//
//  Created by Zebadiah Watson on 10/2/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

import Foundation

class ArtistController {
    
    //Step 1: Create the url, using a private static func and making the baseURL
    private static let baseURL = URL(string: "https://api.musixmatch.com/ws/1.1")
    private static let artistComponents = "artist.search"
    private static let formatKey = "format"
    private static let formatValue = "jsonp"
    private static let callBackKey = "callback"
    private static let callbackValue = "callback"
    private static let apiKeyKey = "apikey"
    private static let apiKeyValue = "c2dfd942d236a20c4d0dba3c3bb12d75"
    private static let artistKey = "q_artist"
    
    static func getArtist(with searchTerm: String, completion: @escaping (Callback?) -> Void) {
        
        guard let url = self.baseURL else {fatalError("URL optional is nil")}
        
        let components = baseURL?.appendingPathComponent(artistComponents)
        
        let formatQueryItem = URLQueryItem
            
    }
    
}// End of Class
