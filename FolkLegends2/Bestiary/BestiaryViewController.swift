import UIKit

class BestiaryViewController : UIViewController {

  @IBOutlet weak var deck: UICollectionView!
   
  var cards: [Card] = []
  var selectedCard: Card = Card()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    deck.dataSource = self
    deck.delegate = self
      
    cards = getCards()
      
      let defaults = UserDefaults.standard
      let portas: Int = defaults.integer(forKey: "Porta")
      for i in 0 ... cards.count - 1 {
          if cards[i].idDoor <= portas {
              cards[i].locked = false
          }
      }
  }
}


extension BestiaryViewController:UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return cards.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: CardCell = deck.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardCell
    
    cell.draw(card: cards[indexPath.item])
    
    return cell
  }
}

extension BestiaryViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    selectedCard = cards[indexPath.item]
    
    if (!selectedCard.locked) {
      performSegue(withIdentifier: "showDetail", sender: self)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let vc: DetailViewController = segue.destination as! DetailViewController
    vc.selectedCard = selectedCard
  }
}
 

