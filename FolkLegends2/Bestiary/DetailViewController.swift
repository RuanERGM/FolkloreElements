import Foundation
import UIKit

class DetailViewController: UIViewController {
  
  
  @IBOutlet weak var imageCharacter: UIImageView!
  
  @IBOutlet weak var labelNameCharacter: UILabel!
  
  @IBOutlet weak var topicInitial: UILabel!
  
  @IBOutlet weak var labelInitial: UILabel!
  
  @IBOutlet weak var topicMiddle: UILabel!
  
  @IBOutlet weak var labelMiddle: UILabel!
  
  @IBOutlet weak var topicEnd: UILabel!
  
  @IBOutlet weak var labelEnd: UILabel!
  
  var selectedCard: Card = Card()
  
  override func viewDidLoad() {
    imageCharacter.image = UIImage(named: selectedCard.imageCharacterDesc)
    labelNameCharacter.text = selectedCard.nameCharacter
    
    topicInitial.text = selectedCard.topicInitial
    labelInitial.text = selectedCard.labelInicial
    
    topicMiddle.text = selectedCard.topicMiddle
    labelMiddle.text = selectedCard.labelMiddle
    
    topicEnd.text = selectedCard.topicEnd
    labelEnd.text = selectedCard.labelEnd
  }
}
