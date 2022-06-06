import UIKit

class Victory: UIViewController{
    
    @IBOutlet weak var cardUnloked: UIImageView!
    var selectedDoor = Numbers()
    
    @IBAction func returnGame(_ sender: Any) {
        self.performSegue(withIdentifier: "showGame", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let destination = segue.destination as? GameViewController {
          destination.selectedDoor = self.selectedDoor
      }
    }
    
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
