import UIKit

class BestiaryViewController : UIViewController {
    
    @IBOutlet weak var deck: UICollectionView!
    
    var selectedCard: Story = Story()
    let defaults = UserDefaults.standard
    var portas: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deck.dataSource = self
        deck.delegate = self
        
        portas = defaults.integer(forKey: "Porta")
        
        for i in 0 ... MockupStoryService.allStories.count - 1 {
            if MockupStoryService.allStories[i].idDoor < portas {
                MockupStoryService.allStories[i].isCardLocked = false
            }
        }
    }
}

//MARK: Delegate and Data Source
extension BestiaryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MockupStoryService.allStories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CardCellBestiary = deck.dequeueReusableCell(withReuseIdentifier: "cardCellBestiary", for: indexPath) as! CardCellBestiary
        
        cell.draw(story: MockupStoryService.allStories[indexPath.item])
        
        return cell
    }
}

extension BestiaryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCard = MockupStoryService.allStories[indexPath.item]
        
        if (!selectedCard.isCardLocked) {
            performSegue(withIdentifier: "showBestiaryDetail", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc: DetailViewController = segue.destination as! DetailViewController
        vc.selectedCard = selectedCard
    }
}


