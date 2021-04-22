//
//  Player.swift
//  BasketballPlayerPicker
//
//  Created by Jenny Morales on 4/22/21.
//

import UIKit

class Player {
    //MARK: - Properties
    let name: String
    let position: String
    let photo: UIImage?
    let uuid: String
    
    //MARK: - Initializer
    init(name: String, position: String, photo: UIImage?, uuid: String = UUID().uuidString) {
        self.name = name
        self.position = position
        self.photo = photo
        self.uuid = uuid
    }

}//End of class
//MARK: - Extension
extension Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
