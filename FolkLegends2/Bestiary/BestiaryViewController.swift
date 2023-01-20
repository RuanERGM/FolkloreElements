import UIKit

class BestiaryViewController : UIViewController {
    
    @IBOutlet weak var deck: UICollectionView!
    
    var listCards: sampleCards?
    var selectedCard: Card = Card()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deck.dataSource = self
        deck.delegate = self
        
        let jsonData = readLocalJSONFile(forName: "Bestiary")
        
        if let data = jsonData {
            if let sampleCardsObj = parse(jsonData: data) {
                listCards = sampleCardsObj
            }
        }
        
        let defaults = UserDefaults.standard
        let portas: Int = defaults.integer(forKey: "Porta")
        
    }
}


extension BestiaryViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (listCards?.bestiaryCards.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CardCell = deck.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardCell
        
        cell.draw(card: (listCards?.bestiaryCards[indexPath.item])!)
        
        return cell
    }
}

extension BestiaryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCard = (listCards?.bestiaryCards[indexPath.item])!
        
        if (!selectedCard.locked) {
            performSegue(withIdentifier: "showDetail", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc: DetailViewController = segue.destination as! DetailViewController
        vc.selectedCard = selectedCard
    }
}


