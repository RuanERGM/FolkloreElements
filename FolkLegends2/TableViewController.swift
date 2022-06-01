

import UIKit

class Numbers {
  var number : String?
  var image : String?
  var locked: Bool
  
  init(prNumber: String, prImage: String, prLocked: Bool){
    self.number = prNumber
    self.image = prImage
    self.locked = prLocked
  }
  
  init(){
    self.number = ""
    self.image = ""
    self.locked = false
  }
}

class TableViewController: UITableViewController {
  
  @IBOutlet var tableNumbers: UITableView!
  @IBOutlet weak var keysCounter: UILabel!
  
  var teste : Int = 0
  var productArray = [Numbers]()
  var selectedCell : Numbers = Numbers()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    teste += 1
    self.keysCounter.text = "\(teste)"
    
    let um = Numbers(prNumber: "Histórias da Terra",prImage: "mapa", prLocked: false)
    productArray.append(um)
    let dois = Numbers(prNumber: "Histórias da Água",prImage: "mapa", prLocked: true)
    productArray.append(dois)
    let tres = Numbers(prNumber: "Histórias do Ar",prImage: "mapa", prLocked: true)
    productArray.append(tres)
    let quatro = Numbers(prNumber: "Histórias do Fogo",prImage: "mapa", prLocked: true)
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
    if let destination = segue.destination as? MapController {
      destination.product = productArray[(tableNumbers.indexPathForSelectedRow?.row)!]
      tableNumbers.deselectRow(at: tableNumbers.indexPathForSelectedRow!, animated: true)
    }
  }
  
}

class tableCell : UITableViewCell
{
  @IBOutlet weak var backView: UIView!
  @IBOutlet weak var frontView: UIView!
}

extension UIView {
  
  func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    self.layer.mask = mask
  }
}
