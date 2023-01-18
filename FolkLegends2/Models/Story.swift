import Foundation
import UIKit

class Story {
    var idDoor: Int
    
    var imgCharCardBestiary: UIImage
    var imgCharStoryBestiary: UIImage
    
    var isLocked: Bool
    
    var nameCharacter: String

    var topicInitialBestiary : String
    var labelInicialBestiary : String

    var topicMiddleBestiary : String
    var labelMiddleBestiary : String

    var topicEndBestiary : String
    var labelEndBestiary : String
    
    var element: ElementsType
    var imgInitialDoor: UIImage
    var imgInitialDoorLocked: UIImage
    var numOfGameCards: Int

    init(idDoor: Int,
         imgCharCardBestiary: UIImage,
         imgCharStoryBestiary: UIImage,
         
         isLocked: Bool,
         nameCharacter: String,
         
         topicInitialBestiary: String,
         labelInicialBestiary: String,
         
         topicMiddleBestiary: String,
         labelMiddleBestiary: String,
         
         topicEndBestiary: String,
         labelEndBestiary: String,
         
         element: ElementsType,
         imgInitialDoor: UIImage,
         imgInitialDoorLocked: UIImage,
         numOfGameCards: Int
    ) {
        
        self.idDoor = idDoor
        self.imgCharCardBestiary = imgCharCardBestiary
        self.imgCharStoryBestiary = imgCharStoryBestiary
        self.isLocked = isLocked
        self.nameCharacter = nameCharacter
        self.topicInitialBestiary = topicInitialBestiary
        self.labelInicialBestiary = labelInicialBestiary
        self.topicMiddleBestiary = topicMiddleBestiary
        self.labelMiddleBestiary = labelMiddleBestiary
        self.topicEndBestiary = topicEndBestiary
        self.labelEndBestiary = labelEndBestiary
        self.element = element
        self.imgInitialDoor = imgInitialDoor
        self.imgInitialDoorLocked = imgInitialDoorLocked
        self.numOfGameCards = numOfGameCards
    }
    
    init() {
        self.idDoor = 0
        self.imgCharCardBestiary = UIImage(named: "")!
        self.imgCharStoryBestiary = UIImage(named: "")!
        self.isLocked = false
        self.nameCharacter = ""
        self.topicInitialBestiary = ""
        self.labelInicialBestiary = ""
        self.topicMiddleBestiary = ""
        self.labelMiddleBestiary = ""
        self.topicEndBestiary = ""
        self.labelEndBestiary = ""
        self.element = .vazio
        self.imgInitialDoor = UIImage(named: "")!
        self.imgInitialDoorLocked = UIImage(named: "")!
        self.numOfGameCards = 0
        
    }
}

enum ElementsType {
    case agua, terra, fogo, ar, vazio, todos
}
