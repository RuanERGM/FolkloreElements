
import Foundation
import UIKit


class MapController: UIViewController {
  
  @IBOutlet weak var tableLabel: UILabel!
  
  var product : Numbers?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableLabel.text = "\((product?.number)!)"
  }
}
