import Foundation
import UIKit

class CardCell:UICollectionViewCell {
  
  @IBOutlet weak var imageCharacter: UIImageView!
  
  func draw(card: Card){
    
    if (card.locked) {
      imageCharacter.image = UIImage(named: "teste3")
    } else {
      imageCharacter.image = card.imageCharacterCard
    }
  }
}
