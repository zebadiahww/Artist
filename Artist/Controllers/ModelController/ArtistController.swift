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
    private static let baseURL = URL(string: "https://api.musixmatch.com/ws/1.1/artist.search")
    private static let artistComponents = "artist.search"
    private static let formatKey = "format"
    private static let formatValue = "jsonp"
    private static let apiKeyKey = "apikey"
    private static let apiKeyValue = "c2dfd942d236a20c4d0dba3c3bb12d75"
    private static let artistKey = "q_artist"
    
    static func getArtist(with searchTerm: String, completion: @escaping ([secondLevelDictionary]) -> Void) {
        //Create the URL
        guard let url = self.baseURL else {fatalError("URL optional is nil")}
        //create components and query items
        
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let searchQueryItem = URLQueryItem(name: artistKey, value: searchTerm)
        let apiQueryItem = URLQueryItem(name: apiKeyKey, value: apiKeyValue)
        
        components?.queryItems = [searchQueryItem, apiQueryItem ]
        
        guard let finalURL = components?.url else { return }
        print(finalURL)
        
        //start the dataTask
        let dataTask = URLSession.shared.dataTask(with: finalURL) { (data, _, error) in
            if let error = error {
                print("error retrieving the data \(error.localizedDescription)")
                completion([])
                return
            }
            
            guard let data = data else {
                print("no data received")
                completion([])
                return
            }
            let jsonDecoder = JSONDecoder()
            do {
                let artistCallback = try jsonDecoder.decode(callback.self, from: data)
                completion(artistCallback.message.body.artistList)
            } catch {
                print("there was an error decoding the data")
            }
        }
        dataTask.resume()
    }
    
}// End of Class
