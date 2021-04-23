//
//  PlayerController.swift
//  BasketballPlayerPicker
//
//  Created by Jenny Morales on 4/22/21.
//

import UIKit

class PlayerController {
    //MARK: - Properties
    static let pointGuard = [
        Player(name: "Steph Curry", position: "Point Guard", photo: UIImage(named: "curry")),
        Player(name: "Damian Lillard", position: "Point Guard", photo: UIImage(named: "dametime")),
        Player(name: "Kyrie Irving", position: "Point Guard", photo: UIImage(named: "kyrie"))
    ]
    
    static let shootingGuard = [
        Player(name: "Klay Thompson", position: "Shooting Guard", photo: UIImage(named: "klay")),
        Player(name: "Demar DeRozan", position: "Shooting Guard", photo: UIImage(named: "derozan")),
        Player(name: "Kobe Bryant", position: "Shooting Guard", photo: UIImage(named: "kobe"))
    ]
    
    static let smallForward = [
        Player(name: "Lebron James", position: "Small Forward", photo: UIImage(named: "lebron")),
        Player(name: "Kawhi Leonard", position: "Small Forward", photo: UIImage(named: "theklaw")),
        Player(name: "Kevin Durant", position: "Small Forward", photo: UIImage(named: "thesnake"))
    ]
    
    static let powerForward = [
        Player(name: "Zion Williamson", position: "Power Forward", photo: UIImage(named: "zion")),
        Player(name: "giannis antetokounmpo", position: "Power Forward", photo: UIImage(named: "greekfreak")),
        Player(name: "Anthony Davis", position: "Power Forward", photo: UIImage(named: "thebrow"))
    ]
    
    static let center = [
        Player(name: "Joel Embiid", position: "Center", photo: UIImage(named: "embiid")),
        Player(name: "Nikola Jokic", position: "Center", photo: UIImage(named: "joker")),
        Player(name: "Karl Towns", position: "Center", photo: UIImage(named: "katz"))
    ]
}
