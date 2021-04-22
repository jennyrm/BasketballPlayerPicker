//
//  PlayerListCollectionViewController.swift
//  BasketballPlayerPicker
//
//  Created by Jenny Morales on 4/22/21.
//

import UIKit

class PlayerListCollectionViewController: UICollectionViewController {
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        shufflePlayers(position: selectedPosition)
    }
    
    //MARK: - Properties
    var playersOnScreen = [Player]()
    var targetPlayer: Player?
    var selectedPosition = "Point Guard"
    
    //MARK: - Functions
    func shufflePlayers(position: String) {
        if position == "Point Guard" {
            guard let randomPointGuard = PlayerController.pointGuard.randomElement(),
                  let randomShootingGuard = PlayerController.shootingGuard.randomElement(),
                  let randomPowerForward = PlayerController.powerForward.randomElement(),
                  let randomSmallForward = PlayerController.smallForward.randomElement(),
                  let randomCenter = PlayerController.center.randomElement() else { return }
            playersOnScreen += [randomPointGuard, randomShootingGuard, randomPowerForward, randomSmallForward, randomCenter]
            targetPlayer = randomPointGuard
        } else if position == "Shooting Guard" {
            
        } else if position == "Power Forward" {
            
        } else if position == "Small Forward" {
            
        } else if position == "Center" {
            
        }
        updateViews()
    }
    
//    func randomPlayerSelector() {
//        guard let randomPointGuard = PlayerController.pointGuard.randomElement(),
//              let randomShootingGuard = PlayerController.shootingGuard.randomElement(),
//              let randomPowerForward = PlayerController.powerForward.randomElement(),
//              let randomSmallForward = PlayerController.smallForward.randomElement(),
//              let randomCenter = PlayerController.center.randomElement() else { return }
//    }
    
    func updateViews() {
        guard let targetPlayer = targetPlayer else { return }
        self.title = "Who is a \(selectedPosition)?"
        collectionView.reloadData()
    }
    
    func presentAlert(player: Player) {
        let success = player == targetPlayer
        let alertController = UIAlertController(title: success ? "Wooo, you know your sh*t ;)" : "Watch more basketball ;(", message: nil, preferredStyle: .alert)
        let doneAction = UIAlertAction(title: "Done", style: .cancel)
        let playAction = UIAlertAction(title: "Play Again", style: .default)
        alertController.addAction(doneAction)
        if success {
            alertController.addAction(playAction)
        }
        present(alertController, animated: true)
    }
    
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return playersOnScreen.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "playerCell", for: indexPath) as? PlayerCollectionViewCell else { return UICollectionViewCell() }
        let player = playersOnScreen[indexPath.row]
        cell.player = player
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let playerSelected = playersOnScreen[indexPath.row]
        presentAlert(player: playerSelected)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPositionPickerVC" {
            guard let destination = segue.destination as? PositionPickerViewController else { return }
            destination.delegate = self
        }
    }
}//End of class

//MARK: - Extension
extension PlayerListCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width / 2
        return CGSize(width: width - 20, height: width + 30)
    }
}//End of extension

//MARK: - Extension
extension PlayerListCollectionViewController: PlayerSelectionDelegate {
    func positionWasSelected(for position: String) {
        selectedPosition = position
        shufflePlayers(position: position)
    }
}//End of extension


