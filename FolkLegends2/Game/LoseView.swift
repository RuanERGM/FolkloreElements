//  LoseView.swift
//  FolkLegends2
//
//  Created by Luciano Uchoa on 03/06/22.
//

import Foundation
import UIKit

class LoseView: UIViewController {

    @IBOutlet weak var labelLoser: UILabel!
    
    var storyIndex =  Int()
    
    var selectedDoor = Numbers()
    
    @IBAction func returnGame(_ sender: Any) {
        self.performSegue(withIdentifier: "showGame", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let destination = segue.destination as? GameViewController {
          destination.selectedDoor = self.selectedDoor
      }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
