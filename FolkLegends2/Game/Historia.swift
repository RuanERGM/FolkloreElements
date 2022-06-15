import UIKit
import Foundation
public var historia:Bool = true
public var control:Bool = true

class Historia: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Gesture(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        historia = true
        UserDefaults.standard.set(historia, forKey: "History")
    }

}
    

