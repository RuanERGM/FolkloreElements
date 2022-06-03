

import UIKit

class Numbers {
    var number : Int?
    var image : String?
    var locked: Bool
    
    init(prNumber: Int, prImage: String, prLocked: Bool){
        self.number = prNumber
        self.image = prImage
        self.locked = prLocked
    }
    
    init(){
        self.number = 0
        self.image = ""
        self.locked = false
    }
}

class TableViewController: UITableViewController {
    
    @IBOutlet var tableNumbers: UITableView!
    
    var productArray = [Numbers]()
    var selectedCell : Numbers = Numbers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let um = Numbers(prNumber: 1,prImage: "DoorDirt", prLocked: false)
        productArray.append(um)
        let dois = Numbers(prNumber: 2,prImage: "DoorWater", prLocked: false)
        productArray.append(dois)
        let tres = Numbers(prNumber: 3,prImage: "DoorAir", prLocked: false)
        productArray.append(tres)
        let quatro = Numbers(prNumber: 4,prImage: "DoorFire", prLocked: true)
        productArray.append(quatro)
        
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
        if selectedCell.locked == false{
            performSegue(withIdentifier: "showdetail", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let destination = segue.destination as? GameViewController {
          destination.doorIndex = selectedCell.number!
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
