//
//  GameViewController.swift
//  FolkLegends2
//
//  Created by Anna Alicia Milani on 01/06/22.
//

import Foundation
import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var deckCpu: UICollectionView!
    @IBOutlet weak var deckPlayer: UICollectionView!
    
    @IBOutlet weak var cardPlayer: UIView!
    @IBOutlet weak var cardCpu: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deckCpu.dataSource = self
        deckPlayer.dataSource = self
    }
    
}

extension GameViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == deckCpu {
            let cell: CardCellGame = deckCpu.dequeueReusableCell(withReuseIdentifier: "cardCellCpu", for: indexPath) as! CardCellGame
        
            cell.draw(cardGame: CardGame())
            return cell
        }
        else {
            let cell: CardCellGame = deckPlayer.dequeueReusableCell(withReuseIdentifier: "cardCellCpu", for: indexPath) as! CardCellGame
        
            cell.draw(cardGame: CardGame())
            return cell
        }
    }
    
    
}

