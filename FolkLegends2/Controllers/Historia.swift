import UIKit
import Foundation

class Historia: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillDisappear(_ animated: Bool) {
        UserDefaults.standard.set(true, forKey: "History")
    }

    
    @IBAction func Gesture(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        UserDefaults.standard.set(true, forKey: "History")
    }

}
    

