//
//  PositionPickerViewController.swift
//  BasketballPlayerPicker
//
//  Created by Jenny Morales on 4/22/21.
//

import UIKit
protocol PlayerSelectionDelegate: AnyObject {
    func positionWasSelected(for position: String)
}
class PositionPickerViewController: UIViewController {
    
    //MARK: - Properties
    weak var delegate: PlayerSelectionDelegate?
    
    //MARK: - Actions
    @IBAction func pointGuardButtonTapped(_ sender: Any) {
        delegate?.positionWasSelected(for: "Point Guard")
        self.dismiss(animated: true)
    }
    @IBAction func shootingGuardButtonTapped(_ sender: Any) {
        delegate?.positionWasSelected(for: "Shooting Guard")
        self.dismiss(animated: true)
    }
    @IBAction func powerForwardButtonTapped(_ sender: Any) {
        delegate?.positionWasSelected(for: "Power Forward")
        self.dismiss(animated: true)
    }
    @IBAction func smallForwardButtonTapped(_ sender: Any) {
        delegate?.positionWasSelected(for: "Small Forward")
        self.dismiss(animated: true)
    }
    @IBAction func centerButtonTapped(_ sender: Any) {
        delegate?.positionWasSelected(for: "Center")
        self.dismiss(animated: true)
    }
}
