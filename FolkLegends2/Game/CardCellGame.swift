//
//  CardCellGame.swift
//  FolkLegends2
//
//  Created by Anna Alicia Milani on 01/06/22.
//

import Foundation
import UIKit

class CardCellGame: UICollectionViewCell {
    
    @IBOutlet weak var topValueDamage: UILabel!
    
    @IBOutlet weak var topValueLife: UILabel!
    
    @IBOutlet weak var bottomValueLife: UILabel!
    
    @IBOutlet weak var bottomValueDamage: UILabel!
   
    @IBOutlet weak var element: UIImageView!
    
    func draw(cardGame: CardGame) {
        topValueDamage.text = String(cardGame.damage)
        bottomValueDamage.text  = String(cardGame.damage)
        
        topValueLife.text  = String(cardGame.life)
        bottomValueLife.text = String(cardGame.life)
        
        element.image = UIImage(named: cardGame.getElement())
    }
}
