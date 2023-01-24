//
//  CardCellGame.swift
//  FolkLegends2
//
//  Created by Anna Alicia Milani on 01/06/22.
//

import Foundation
import UIKit

class CardCellGame: UICollectionViewCell {
    
    @IBOutlet weak var bottomValueLife: UILabel!
    @IBOutlet weak var bottomValueDamage: UILabel!
    @IBOutlet weak var element: UIImageView!
    
    func drawUser(cardGame: CardGame) {
        bottomValueDamage.text  = String(cardGame.damage)
        bottomValueLife.text = String(cardGame.life)
        element.image = UIImage(named: cardGame.getElement())
    }
    
    func drawCpu(cardGame: CardGame) {
        bottomValueDamage.text  = String(cardGame.damage)
        bottomValueLife.text = String(cardGame.life)
        element.image = UIImage.backCardGame
    }
}
