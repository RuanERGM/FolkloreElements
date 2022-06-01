//
//  GameViewController.swift
//  FolkLegends2
//
//  Created by Anna Alicia Milani on 01/06/22.
//

import Foundation
import UIKit

class GameViewController: UIViewController {
    
    // colections
    @IBOutlet weak var deckCpu: UICollectionView!
    @IBOutlet weak var deckPlayer: UICollectionView!
    
    // cards - view
    @IBOutlet weak var cardCpu: UIView!
    @IBOutlet weak var cardPlayer: UIView!
    
    // player card
    @IBOutlet weak var labelTopDamage: UILabel!
    @IBOutlet weak var labelBottomDamage: UILabel!
    @IBOutlet weak var labelTopLife: UILabel!
    @IBOutlet weak var labelBottomLife: UILabel!
    @IBOutlet weak var imagePlayer: UIImageView!
    
    // cpu card
    
    var cardsPlayer: [CardGame] = []
    var cardsCpu: [CardGame] = []
    
    var selectedCardPlayer: CardGame = CardGame()
    var selectedCardCpu: CardGame = CardGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardsPlayer = [CardGame(), CardGame(), CardGame()]
        cardsCpu = [CardGame(), CardGame(), CardGame()]
        
        deckCpu.dataSource = self
        deckPlayer.dataSource = self
        
        deckPlayer.delegate = self
        
        cardPlayer.isHidden = true
        cardCpu.isHidden = true
    }
    
}

extension GameViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardsPlayer.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == deckCpu {
            let cell: CardCellGame = deckCpu.dequeueReusableCell(withReuseIdentifier: "cardCellCpu", for: indexPath) as! CardCellGame
        
            cell.draw(cardGame: cardsCpu[indexPath.item])
            return cell
        }
        else {
            let cell: CardCellGame = deckPlayer.dequeueReusableCell(withReuseIdentifier: "cardCellPlayer", for: indexPath) as! CardCellGame
        
            cell.draw(cardGame: cardsPlayer[indexPath.item])
            return cell
        }
    }
}

extension GameViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
      if collectionView == deckPlayer {
          
          selectedCardPlayer = cardsPlayer[indexPath.item]
        
          labelTopDamage.text = String(selectedCardPlayer.damage)
          labelBottomDamage.text = String(selectedCardPlayer.damage)
          
          labelTopLife.text = String(selectedCardPlayer.life)
          labelBottomLife.text = String(selectedCardPlayer.life)
          
          imagePlayer.image = UIImage(named: selectedCardPlayer.getElement())
          
          cardPlayer.isHidden = false
      }
      
  }
}

