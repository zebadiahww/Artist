//
//  ArtistTableViewCell.swift
//  Artist
//
//  Created by Zebadiah Watson on 10/3/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {
    
    //Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    var artistItem: artist? {
        didSet {
            guard let artist = artistItem else { return }
            nameLabel.text = artist.artistName
            idLabel.text = "\(artist.artistID)"
            countryLabel.text = artist.artistCountry
            
        }
    }
}// End of Class
