//
//  SearchGameViewCell.swift
//  GaminHood
//
//  Created by Jose Fumanal Quintana on 25/11/20.
//

import UIKit

class SearchGameViewCell: UITableViewCell {
    
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var logoConsole: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var nameGame: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    
    override func prepareForReuse() {
        gameImage.image = nil
        nameGame.text = nil
        releaseDate.text = nil
        logoConsole.image = nil
        likeButton.backgroundColor = .white
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func configureCell(gamePhoto: String, game: String, date: String, like: UIButton, logo: String) {
        gameImage.image = UIImage(named: gamePhoto)
        nameGame.text = game
        releaseDate.text = date
        likeButton = like
        logoConsole.image = UIImage(named: logo)
    }
    
}
