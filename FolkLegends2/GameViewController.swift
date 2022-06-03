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
    @IBOutlet weak var labelTopDamageCpu: UILabel!
    @IBOutlet weak var labelBottomDamageCpu: UILabel!
    @IBOutlet weak var labelTopLifeCpu: UILabel!
    @IBOutlet weak var labelBottomLifeCpu: UILabel!
    @IBOutlet weak var imageCpu: UIImageView!
    @IBOutlet weak var labelTitleCpu: UILabel!
    
    @IBOutlet weak var labelFeedback: UILabel!
    
    var cardsPlayer: [CardGame] = []
    var cardsCpu: [CardGame] = []
    
    var selectedCardPlayer: CardGame = CardGame()
    var selectedCardCpu: CardGame = CardGame()
    
    var countCardsPlayer: Int = 0
    var countCardsCpu: Int = 0
    var doorIndex = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Chave: ", doorIndex)
        performSegue(withIdentifier: "talk", sender: self)
        cardsPlayer = [CardGame()]
        cardsCpu = [CardGame()]
        
        deckCpu.dataSource = self
        deckPlayer.dataSource = self
        
        deckPlayer.delegate = self
        
        cardPlayer.isHidden = true
        cardCpu.isHidden = true
        labelTitlePlayer.isHidden = true
        labelTitleCpu.isHidden = true
        labelFeedback.text = "Sua vez!"
        
        
        deckPlayer.isUserInteractionEnabled = true
        
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
          
          // Desenhando no meio da tela a carta player que foi clicada
          
          selectedCardPlayer = cardsPlayer[indexPath.item]
        
          labelTopDamage.text = String(selectedCardPlayer.damage)
          labelBottomDamage.text = String(selectedCardPlayer.damage)
          
          labelTopLife.text = String(selectedCardPlayer.life)
          labelBottomLife.text = String(selectedCardPlayer.life)
          
          imagePlayer.image = UIImage(named: selectedCardPlayer.getElement())
          
          cardPlayer.isHidden = false
          labelTitlePlayer.isHidden = false
          
        
          deckPlayer.isUserInteractionEnabled = false
          labelFeedback.text = "Aguarde o oponente..."
          
          let indexCpu = Int.random(in: 0...cardsCpu.count - 1)
          
          DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
              
              // Desenhando no meio da tela a carta cpu que foi clicada
              
              self.selectedCardCpu = self.cardsCpu[indexCpu]
              
              self.labelTopDamageCpu.text = String(self.selectedCardCpu.damage)
              self.labelBottomDamageCpu.text = String(self.selectedCardCpu.damage)
              
              self.labelTopLifeCpu.text = String(self.selectedCardCpu.life)
              self.labelBottomLifeCpu.text = String(self.selectedCardCpu.life)
              
              self.imageCpu.image = UIImage(named: self.selectedCardCpu.getElement())
              
              self.labelTitleCpu.isHidden = false
              self.cardCpu.isHidden = false
              
              // Ataque
              
              let lifeCpu = String(self.selectedCardPlayer.fight(enemy: self.selectedCardCpu))
              
              
              // Contra ataque
              
              let lifePlayer = String(self.selectedCardPlayer.counterattack(enemy: self.selectedCardCpu))
              
              DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                  
                  // Atualizando valores de vida da cpu
                  
                  self.labelTopLifeCpu.text = lifeCpu
                  self.labelBottomLifeCpu.text = lifeCpu
                  self.deckCpu.reloadData()
             
                  DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                      
                      // Atualizando valores de vida do player
                      self.labelTopLife.text = lifePlayer
                      self.labelBottomLife.text = lifePlayer
                      self.deckPlayer.reloadData()
                  
                  
                      DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                      
                          if (Int(lifeCpu)! < 1) {
                              self.cardsCpu.remove(at: indexCpu)
                              self.countCardsCpu = self.cardsCpu.count
                          }
                          
                          if (Int(lifePlayer)! < 1) {
                              self.cardsPlayer.remove(at: indexPath.item)
                              self.countCardsPlayer = self.cardsPlayer.count
                          }
                          
                          self.deckCpu.reloadData()
                          self.deckPlayer.reloadData()
                          
                          self.cardCpu.isHidden = true
                          self.labelTitleCpu.isHidden = true
                          
                          self.cardPlayer.isHidden = true
                          self.labelTitlePlayer.isHidden = true
                          
                          self.deckPlayer.isUserInteractionEnabled = true
                          self.labelFeedback.text = "Sua vez!"
                          
                          
                          if self.cardsPlayer.count == 0 && self.cardsCpu.count > 0{
                              self.deckPlayer.isUserInteractionEnabled = false
                              self.labelFeedback.text = "Você perdeu :("
                              self.performSegue(withIdentifier: "Loser", sender: self)
                              // chamar tela
                          }
                          if self.cardsCpu.count == 0 && self.cardsPlayer.count > 0{
                              self.deckPlayer.isUserInteractionEnabled = false
                              self.labelFeedback.text = "Você ganhou :D"
                              self.performSegue(withIdentifier: "Victory", sender: self)
                              // chamar tela
                          }
                          if self.cardsPlayer.count == 0 && self.cardsCpu.count == 0{
                              self.deckPlayer.isUserInteractionEnabled = false
                              self.labelFeedback.text = "Você perdeu :("
                              self.performSegue(withIdentifier: "Loser", sender: self)
                              // chamar tela
                          }
                      }
                  }
              }
              
          }
      }
  }
}

