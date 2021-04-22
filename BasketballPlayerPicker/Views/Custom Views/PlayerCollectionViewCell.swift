//
//  PlayerCollectionViewCell.swift
//  BasketballPlayerPicker
//
//  Created by Jenny Morales on 4/22/21.
//

import UIKit

class PlayerCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var playerImageView: UIImageView!
    
    //MARK: - Properties
    var player: Player? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Functions
    func updateViews() {
        guard let player = player else { return }
        playerImageView.contentMode = .scaleAspectFill
        playerImageView.image = player.photo
    }
}
