import Foundation
import UIKit

class CardCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCharacter: UIImageView!
    
    func draw(story: Story){
        imageCharacter.image = story.isCardLocked ? UIImage(named: "best.card.back"): story.imgCharCardBestiary
    }
}
