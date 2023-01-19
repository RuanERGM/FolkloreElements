import Foundation
import UIKit

class CardCell:UICollectionViewCell {
  
  @IBOutlet weak var imageCharacter: UIImageView!
  
  func draw(story: Story){
    
    if (story.isCardLocked) {
      imageCharacter.image = UIImage(named: "best.card.back")
    } else {
      imageCharacter.image = story.imgCharCardBestiary
    }
  }
}
