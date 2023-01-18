import UIKit
import Foundation
public var historia:Bool = true
public var control:Bool = true

class Historia: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillDisappear(_ animated: Bool) {
        historia = true
        UserDefaults.standard.set(historia, forKey: "History")
        let defaults = UserDefaults.standard
        control = defaults.bool(forKey: "History")
    }

    
    @IBAction func Gesture(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        historia = true
        UserDefaults.standard.set(historia, forKey: "History")
    }

}
    

