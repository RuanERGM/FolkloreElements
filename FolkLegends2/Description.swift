import UIKit
import Foundation

class Description: UIViewController{
  

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var Descricao: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        if (x == 1){
            Descricao.text = "I am the one born of the earth, the one who has eyes scattered across this earth! My name is Guarana. Now face me"
            name.text = "Guaraná"
        }
        
        if (x == 2){
            Descricao.text = "I am the one who was betrayed and turned into a tapir by those I trusted. Birá is my name, let's fight "
            name.text = "Birá"
        }
        if (x == 3){
            Descricao.text = "People tremble as they try to pronounce my name. I am the one who wanders in the depths of dreams,If you have the courage try to beat me"
            name.text = "Tutu"
        }
        if (x == 4){
            Descricao.text = "I am the lord of flames, my wings guard the powers of fire. Anyone who tries to take this power will have to face me."
            name.text = "King Vulture"
        }
    
    
  }
}
