import UIKit
import Foundation

class PreGameViewController: UIViewController{
    
    var story = Story()
    
    @IBOutlet weak var characterName: UIImageView!
    @IBOutlet weak var characterDesc: UILabel!
    @IBOutlet weak var characterImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        characterDesc.text = story.gameDesc
        characterName.image = story.imgCharGame
        characterImg.image = story.imgCharNameGame
    }
    
    @IBAction func Gestor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
