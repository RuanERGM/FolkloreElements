//  LoseView.swift
//  FolkLegends2
//
//  Created by Luciano Uchoa on 03/06/22.
//

import Foundation
import UIKit

class DefeatViewController: UIViewController {
    
    @IBOutlet weak var defeatImg: UIImageView!
    @IBOutlet weak var defeatDesc: UILabel!
    
    var story = Story()
    
    @IBAction func ReturnGame(_ sender: UIButton) {
        performSegue(withIdentifier: "returnToGame", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? GameViewController {
            destination.selectedDoor = story
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defeatImg.image = story.imgDefeat
        defeatDesc.text = story.defeatLabel
    }
}
