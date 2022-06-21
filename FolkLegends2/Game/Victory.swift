import UIKit

class Victory: UIViewController{
    
    @IBOutlet weak var cardUnloked: UIImageView!
    var selectedDoor = Numbers()
    
    
    @IBAction func ReturnGame(_ sender: Any) {
        
        performSegue(withIdentifier: "retornar", sender: self)
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        selectedDoor.numOfCards = y
        
        
      if let destination = segue.destination as? GameViewController {
          destination.selectedDoor = self.selectedDoor
      }
    }
    
    func getCardUnloked() -> String {
        switch CardControl {
        case 0:
            return "card.guarana"
        case 1:
            return "card.peixe"
        case 2:
            return "card.tutu"
        case 3:
            return "card.bahira"
        default:
            return "bes.card.back"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        teste
        cardUnloked.image = UIImage(named: getCardUnloked())
        
    }
}
