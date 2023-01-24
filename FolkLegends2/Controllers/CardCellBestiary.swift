import Foundation
import UIKit

class CardCellBestiary: UICollectionViewCell {
    
    @IBOutlet weak var imageCharacter: UIImageView!
    
    func draw(story: Story){
        imageCharacter.image = story.isCardLocked ? UIImage.backCardBestiary: story.imgCharCardBestiary
    }
}
