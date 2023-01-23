import UIKit

class BestiaryViewController : UIViewController {
    
    @IBOutlet weak var deck: UICollectionView!
    
    var selectedCard: Story = Story()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deck.dataSource = self
        deck.delegate = self
        
        let defaults = UserDefaults.standard
        let portas: Int = defaults.integer(forKey: "Porta")
        for i in 0 ... MockupStoryService.allStories.count - 1 {
            if MockupStoryService.allStories[i].idDoor < portas {
                MockupStoryService.allStories[i].isCardLocked = false
            }
        }
    }
}


extension BestiaryViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MockupStoryService.allStories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CardCell = deck.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardCell
        
        cell.draw(story: MockupStoryService.allStories[indexPath.item])
        
        return cell
    }
}

extension BestiaryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCard = MockupStoryService.allStories[indexPath.item]
        
        if (!selectedCard.isCardLocked) {
            performSegue(withIdentifier: "showDetail", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc: DetailViewController = segue.destination as! DetailViewController
        vc.selectedCard = selectedCard
    }
}


