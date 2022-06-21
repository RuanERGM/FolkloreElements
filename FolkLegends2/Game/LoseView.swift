//  LoseView.swift
//  FolkLegends2
//
//  Created by Luciano Uchoa on 03/06/22.
//

import Foundation
import UIKit

class LoseView: UIViewController {

    @IBOutlet weak var labelLoser: UILabel!
    
    @IBOutlet weak var labelLose: UILabel!
    
    @IBOutlet weak var imageLose: UIImageView!
    
    var selectedDoor = Numbers()
    
    @IBAction func ReturnGame(_ sender: UIButton) {
        performSegue(withIdentifier: "show", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        selectedDoor.numOfCards = y
        selectedDoor.number = fase
      if let destination = segue.destination as? GameViewController {
          destination.selectedDoor = self.selectedDoor
      }
    }
    
    
    var imgDerrota = ""
    var txtDerrota = ""
    
    func getCardLose() {
        switch CardControl {
        case 0:
            imgDerrota = "derrota.guarana"
            txtDerrota = "É uma grande pena mas estou pronto pra jogar novamente e você?"
        case 1:
            imgDerrota = "derrota.peixe"
            txtDerrota = "Assim como eu, você perdeu essa batalha mas não desanime, vamos tentar novamente!"
        case 2:
            imgDerrota = "derrota.tutu"
            txtDerrota = "Haha! Vai desistir ou tentar perder de novo?"
        case 3:
            imgDerrota = "derrota.bahira"
            txtDerrota = "Boa luta mas você ficará preso aqui para sempre enquanto não me ganhar!"
        default:
            imgDerrota = "bes.card.back"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCardLose()
        imageLose.image = UIImage(named: imgDerrota)
        labelLose.text = txtDerrota
    }
}
