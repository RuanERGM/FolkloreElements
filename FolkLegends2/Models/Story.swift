import Foundation
import UIKit

class Story {
    var idDoor: Int
    
    var imgCharCardBestiary: UIImage
    var imgCharStoryBestiary: UIImage
    
    var isDoorLocked: Bool
    var isCardLocked: Bool
    
    var nameCharacter: String
    
    var topicInitialBestiary : String
    var labelInicialBestiary : String
    
    var topicMiddleBestiary : String
    var labelMiddleBestiary : String
    
    var topicEndBestiary : String
    var labelEndBestiary : String
    
    var element: ElementsType
    var unlockedElement: ElementsType
    
    var imgInitialDoor: UIImage
    var imgInitialDoorLocked: UIImage
    var numOfGameCards: Int
    
    var gameDesc: String
    var imgCharGame: UIImage
    var imgCharNameGame: UIImage
    
    var victoryLabel: String
    
    var imgDefeat: UIImage
    var defeatLabel: String
    
    init(idDoor: Int,
         imgCharCardBestiary: UIImage,
         imgCharStoryBestiary: UIImage,
         
         isDoorLocked: Bool,
         isCardLocked: Bool,
         nameCharacter: String,
         
         topicInitialBestiary: String,
         labelInicialBestiary: String,
         
         topicMiddleBestiary: String,
         labelMiddleBestiary: String,
         
         topicEndBestiary: String,
         labelEndBestiary: String,
         
         element: ElementsType,
         unlockedElement: ElementsType,
         
         imgInitialDoor: UIImage,
         imgInitialDoorLocked: UIImage,
         numOfGameCards: Int,
         
         gameDesc: String,
         imgCharGame: UIImage,
         imgCharNameGame: UIImage,
         
         victoryLabel: String,
         
         imgDefeat: UIImage,
         defeatLabel: String
    ) {
        
        self.idDoor = idDoor
        self.imgCharCardBestiary = imgCharCardBestiary
        self.imgCharStoryBestiary = imgCharStoryBestiary
        self.isDoorLocked = isDoorLocked
        self.isCardLocked = isCardLocked
        self.nameCharacter = nameCharacter
        self.topicInitialBestiary = topicInitialBestiary
        self.labelInicialBestiary = labelInicialBestiary
        self.topicMiddleBestiary = topicMiddleBestiary
        self.labelMiddleBestiary = labelMiddleBestiary
        self.topicEndBestiary = topicEndBestiary
        self.labelEndBestiary = labelEndBestiary
        self.element = element
        self.unlockedElement = unlockedElement
        self.imgInitialDoor = imgInitialDoor
        self.imgInitialDoorLocked = imgInitialDoorLocked
        self.numOfGameCards = numOfGameCards
        self.gameDesc = gameDesc
        self.imgCharGame = imgCharGame
        self.imgCharNameGame = imgCharNameGame
        self.victoryLabel = victoryLabel
        self.imgDefeat = imgDefeat
        self.defeatLabel = defeatLabel
    }
    
    init() {
        self.idDoor = 0
        self.imgCharCardBestiary = UIImage()
        self.imgCharStoryBestiary = UIImage()
        self.isDoorLocked = false
        self.isCardLocked = false
        self.nameCharacter = ""
        self.topicInitialBestiary = ""
        self.labelInicialBestiary = ""
        self.topicMiddleBestiary = ""
        self.labelMiddleBestiary = ""
        self.topicEndBestiary = ""
        self.labelEndBestiary = ""
        self.unlockedElement = .vazio
        self.element = .vazio
        self.imgInitialDoor = UIImage()
        self.imgInitialDoorLocked = UIImage()
        self.numOfGameCards = 0
        self.gameDesc = ""
        self.imgCharGame = UIImage()
        self.imgCharNameGame = UIImage()
        self.victoryLabel = ""
        self.imgDefeat = UIImage()
        self.defeatLabel = ""
    }
}

enum ElementsType {
    case agua, terra, fogo, ar, vazio, todos
}
