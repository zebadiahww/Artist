//
//  ArtistTableViewController.swift
//  Artist
//
//  Created by Zebadiah Watson on 10/3/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

import UIKit

class ArtistTableViewController: UITableViewController, UISearchBarDelegate {
    
    //Outlets
    @IBOutlet weak var artistSearchBar: UISearchBar!
    
    var artistSearchResult: [secondLevelDictionary] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        artistSearchBar.delegate = self
        
        }
        

    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchTerm = searchBar.text, !searchTerm.isEmpty else { return }
        ArtistController.getArtist(with: searchTerm) { (results) in
            self.artistSearchResult = results
            DispatchQueue.main.async {
                self.tableView.reloadData()
                
            }
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return artistSearchResult.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "artistCell", for: indexPath) as! ArtistTableViewCell

        let searchResult = artistSearchResult[indexPath.row]
        cell.artistItem = searchResult.artist
        return cell
    }
    

   
}// End of Class
