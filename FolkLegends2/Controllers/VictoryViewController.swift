import UIKit

class VictoryViewController: UIViewController{
    
    @IBOutlet weak var cardUnloked: UIImageView!
    @IBOutlet weak var labelVictory: UILabel!
    
    var story = Story()
    
    @IBAction func ReturnGame(_ sender: Any) {
        performSegue(withIdentifier: "retornar", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? GameViewController {
            destination.selectedDoor = story
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardUnloked.image = story.imgCharCardBestiary
        labelVictory.text = story.victoryLabel
        
    }
}
