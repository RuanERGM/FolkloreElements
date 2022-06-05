import UIKit

class Victory: UIViewController{
    
    @IBOutlet weak var cardUnloked: UIImageView!
    
    func getCardUnloked() -> String {
        switch UserKeys.allDoor {
        case 1:
            return "card.guarana"
        case 2:
            return "card.peixe"
        case 3:
            return "card.tutu"
        case 4:
            return "card.bahira"
        default:
            return "bes.card.back"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardUnloked.image = UIImage(named: getCardUnloked())
        
    }
}
