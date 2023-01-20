import UIKit
import Foundation

class Description: UIViewController{
    
    var story = Story()
    
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var Descricao: UILabel!
    @IBOutlet weak var Name: UIImageView!
    
    @IBOutlet var Description: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Descricao.text = story.gameDesc
        Name.image = story.imgCharGame
        foto.image = story.imgCharNameGame
        
    }
    @IBAction func Gestor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
