import Foundation
import UIKit

class Story {
    var idDoor: Int
    
    var imgCharCardBestiary: UIImage
    var imgCharStoryBestiary: UIImage
    
    var isCardBestiaryLocked: Bool
    
    var nameCharacter: String

    var topicInitialBestiary : String
    var labelInicialBestiary : String

    var topicMiddleBestiary : String
    var labelMiddleBestiary : String

    var topicEndBestiary : String
    var labelEndBestiary : String

    init(idDoor: Int,
         imgCharCardBestiary: UIImage,
         imgCharStoryBestiary: UIImage,
         isCardBestiaryLocked: Bool,
         nameCharacter: String,
         
         topicInitialBestiary: String,
         labelInicialBestiary: String,
         
         topicMiddleBestiary: String,
         labelMiddleBestiary: String,
         
         topicEndBestiary: String,
         labelEndBestiary: String) {
        
        self.idDoor = idDoor
        self.imgCharCardBestiary = imgCharCardBestiary
        self.imgCharStoryBestiary = imgCharStoryBestiary
        self.isCardBestiaryLocked = isCardBestiaryLocked
        self.nameCharacter = nameCharacter
        self.topicInitialBestiary = topicInitialBestiary
        self.labelInicialBestiary = labelInicialBestiary
        self.topicMiddleBestiary = topicMiddleBestiary
        self.labelMiddleBestiary = labelMiddleBestiary
        self.topicEndBestiary = topicEndBestiary
        self.labelEndBestiary = labelEndBestiary
    }
    
    init() {
        self.idDoor = 0
        self.imgCharCardBestiary = UIImage(named: "")!
        self.imgCharStoryBestiary = UIImage(named: "")!
        self.isCardBestiaryLocked = false
        self.nameCharacter = ""
        self.topicInitialBestiary = ""
        self.labelInicialBestiary = ""
        self.topicMiddleBestiary = ""
        self.labelMiddleBestiary = ""
        self.topicEndBestiary = ""
        self.labelEndBestiary = ""
    }
}
