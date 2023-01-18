import UIKit

class Victory: UIViewController{
    
    @IBOutlet weak var cardUnloked: UIImageView!
    @IBOutlet weak var labelVictory: UILabel!
    
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
    
    var imgVictory = ""
    var txtVictory = ""
    
    func getCardUnloked() {
        switch CardControl {
        case 0:
            imgVictory = "card.guarana"
            txtVictory = "Que bacana! Você finalmente vai me conhecer melhor. Olha só a minha carta no bestiário!"
        case 1:
            imgVictory = "card.peixe"
            txtVictory = "Que duelo excelente! Agora que terminamos essa partida, você conhecerá as injustiças que aconteceram comigo."
        case 2:
            imgVictory = "card.tutu"
            txtVictory = "Claro que você ganhou… Eu deixei. Está aqui a minha carta."
        case 3:
            imgVictory = "card.bahira"
            txtVictory = "Muita calma. Agora que você possui tal poder precisará entender a sua origem, olhe só minha carta no bestiário!"
        default:
            imgVictory = "bes.card.back"
            txtVictory = "Parabéns!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCardUnloked()
        cardUnloked.image = UIImage(named: imgVictory)
        labelVictory.text = txtVictory
        
    }
}
