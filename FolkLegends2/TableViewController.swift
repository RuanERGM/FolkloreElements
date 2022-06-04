

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var tableNumbers: UITableView!
    
    var productArray = [Numbers]()
    var selectedCell : Numbers = Numbers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        productArray = [
            Numbers(prNumber: 1, prImage: "DoorDirt", prId: .terra, prIntro: "Vamos duelar??", prKeyUnlocked: .agua, prNumOfCards: 3),
            
            Numbers(prNumber: 2, prImage: "DoorWater", prId: .agua, prIntro: "Vamos duelar??", prKeyUnlocked: .ar, prNumOfCards: 4),
            
            Numbers(prNumber: 3, prImage: "DoorAir", prId: .ar, prIntro: "Vamos duelar??", prKeyUnlocked: .fogo, prNumOfCards: 5),
            
            Numbers(prNumber: 4, prImage: "DoorFire", prId: .fogo, prIntro: "Vamos duelar??", prKeyUnlocked: .todos, prNumOfCards: 6)
        ]
        
        tableNumbers.dataSource = self
        tableNumbers.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! tableCell
        
        DispatchQueue.main.async
        {
            cell.backView.layer.cornerRadius = 10.0;
            cell.frontView.roundCorners([.topRight, .bottomRight], radius: 10)
            cell.CellViewImage.image = UIImage(named: self.productArray[indexPath.item].image!)
            cell.CellViewImage.layer.cornerRadius = 10.0;
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = productArray[indexPath.item]
        if UserKeys.allKeys.contains(selectedCell.id) {
            performSegue(withIdentifier: "showdetail", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let destination = segue.destination as? GameViewController {
          destination.selectedDoor = selectedCell
      }
    }
    
}

class tableCell : UITableViewCell
{
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var frontView: UIView!
    @IBOutlet weak var CellViewImage: UIImageView!
}

extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}
