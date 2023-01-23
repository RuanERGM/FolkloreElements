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
    
    var selectedCard: Story = Story()
    
    override func viewDidLoad() {
        imageCharacter.image = selectedCard.imgCharStoryBestiary
        labelNameCharacter.text = selectedCard.nameCharacter
        
        topicInitial.text = selectedCard.topicInitialBestiary
        labelInitial.text = selectedCard.labelInicialBestiary
        
        topicMiddle.text = selectedCard.topicMiddleBestiary
        labelMiddle.text = selectedCard.labelMiddleBestiary
        
        topicEnd.text = selectedCard.topicEndBestiary
        labelEnd.text = selectedCard.labelEndBestiary
    }
}
