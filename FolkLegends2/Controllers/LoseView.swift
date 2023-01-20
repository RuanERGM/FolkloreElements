//  LoseView.swift
//  FolkLegends2
//
//  Created by Luciano Uchoa on 03/06/22.
//

import Foundation
import UIKit

class LoseView: UIViewController {

    @IBOutlet weak var labelLoser: UILabel!
    
    @IBOutlet weak var labelLose: UILabel!
    
    @IBOutlet weak var imageLose: UIImageView!
    
    var story = Story()
    
    @IBAction func ReturnGame(_ sender: UIButton) {
        performSegue(withIdentifier: "show", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let destination = segue.destination as? GameViewController {
          destination.selectedDoor = story
      }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageLose.image = story.imgDefeat
        labelLose.text = story.defeatLabel
    }
}
