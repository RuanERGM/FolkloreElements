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
    @IBOutlet weak var labelTitlePlayer: UILabel!
    
    // cpu card
    
    var cardsPlayer: [CardGame] = []
    var cardsCpu: [CardGame] = []
    
    @IBOutlet weak var labelTopDamageCpu: UILabel!
    @IBOutlet weak var labelBottomDamageCpu: UILabel!
    @IBOutlet weak var labelTopLifeCpu: UILabel!
    @IBOutlet weak var labelBottomLifeCpu: UILabel!
    @IBOutlet weak var imageCpu: UIImageView!
    @IBOutlet weak var labelTitleCpu: UILabel!
    
    var selectedCardPlayer: CardGame = CardGame()
    var selectedCardCpu: CardGame = CardGame()
    
    var countCardsPlayer: Int = 0
    var countCardsCpu: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardsPlayer = [CardGame(), CardGame(), CardGame()]
        cardsCpu = [CardGame(), CardGame(), CardGame()]
        
        deckCpu.dataSource = self
        deckPlayer.dataSource = self
        
        deckPlayer.delegate = self
        
        cardPlayer.isHidden = true
        cardCpu.isHidden = true
        labelTitlePlayer.isHidden = true
        labelTitleCpu.isHidden = true
        
        countCardsPlayer = cardsPlayer.count
        countCardsCpu = cardsCpu.count
    }
    
}

extension GameViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == deckCpu {
            return countCardsCpu
        } else {
            return countCardsPlayer
        }
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
          labelTitlePlayer.isHidden = false
          
          let indexCpu = Int.random(in: 0...cardsCpu.count - 1)
          
          DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
          
              self.selectedCardCpu = self.cardsCpu[indexCpu]
              
              self.labelTopDamageCpu.text = String(self.selectedCardCpu.damage)
              self.labelBottomDamageCpu.text = String(self.selectedCardCpu.damage)
              
              self.labelTopLifeCpu.text = String(self.selectedCardCpu.life)
              self.labelBottomLifeCpu.text = String(self.selectedCardCpu.life)
              
              self.imageCpu.image = UIImage(named: self.selectedCardCpu.getElement())
              
              self.labelTitleCpu.isHidden = false
              self.cardCpu.isHidden = false
              
              let lifeCpu = String(self.selectedCardPlayer.fight(enemy: self.selectedCardCpu))
              
              DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                  
                  self.labelTopLifeCpu.text = lifeCpu
                  self.labelBottomLifeCpu.text = lifeCpu
                  self.deckCpu.reloadData()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                  
                      if (Int(lifeCpu)! < 1) {
                          self.cardsCpu.remove(at: indexCpu)
                          self.countCardsCpu = self.cardsCpu.count
                      }
                      
                      self.deckCpu.reloadData()
                      
                      self.cardCpu.isHidden = true
                      self.labelTitleCpu.isHidden = true
                      
                      self.cardPlayer.isHidden = true
                      self.labelTitlePlayer.isHidden = true
                  }
              }
          }
      }
  }
}

