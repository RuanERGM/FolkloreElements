

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var tableNumbers: UITableView!
    
    @IBOutlet weak var currentKey: UIImageView!
        
    var productArray = [Numbers]()
    var selectedCell : Numbers = Numbers()
    
    public var portas: Int = 0
    
    func getKey() -> String {
        let defaults = UserDefaults.standard
        portas = defaults.integer(forKey: "Porta")
        
        switch (portas){
        case 0:
            return "chave.terra"
        case 1:
            return "chave.agua"
        case 2:
            return "chave.ar"
        case 3:
            return "chave.fogo"
        default:
            return "chave.terra"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        currentKey.image = UIImage(named: getKey())
        
        productArray = [
            Numbers(prNumber: 0, prImage: "ret.door.terra", prId: .terra, prImageLocked: "ret.lock.terra", prKeyUnlocked: .agua, prNumOfCards: 1),
            
            Numbers(prNumber: 1, prImage: "ret.door.agua", prId: .agua, prImageLocked: "ret.lock.agua", prKeyUnlocked: .ar, prNumOfCards: 2),
            
            Numbers(prNumber: 2, prImage: "ret.door.ar", prId: .ar, prImageLocked: "ret.lock.ar", prKeyUnlocked: .fogo, prNumOfCards: 3),
            
            Numbers(prNumber: 3, prImage: "ret.door.fogo", prId: .fogo, prImageLocked: "ret.lock.fogo", prKeyUnlocked: .todos, prNumOfCards: 4)
        ]
        self.tableNumbers.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableNumbers.backgroundView = UIImageView(image: UIImage(named: "background 1"))
        tableNumbers.backgroundView?.contentMode = .scaleAspectFill
        tableNumbers.dataSource = self
        tableNumbers.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        control = defaults.bool(forKey: "History")

        if(control == false){
            performSegue(withIdentifier: "Hist", sender: self)
        }
   
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
            cell.frontView.roundCorners([.topRight, .bottomRight, .topLeft, .bottomLeft], radius: 10)
            
            let defaults = UserDefaults.standard
            self.portas = defaults.integer(forKey: "Porta")
            
            if self.portas >= self.productArray[indexPath.item].number  {
                cell.CellViewImage.image = UIImage(named: self.productArray[indexPath.item].image!)
            } else {
                cell.CellViewImage.image = UIImage(named: self.productArray[indexPath.item].imageLocked!)
            }
            
            cell.CellViewImage.layer.cornerRadius = 10.0;
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = productArray[indexPath.item]
        
        let defaults = UserDefaults.standard
        self.portas = defaults.integer(forKey: "Porta")
        
        if self.portas >= selectedCell.number {
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
