import Foundation
import UIKit

class Card {
  var imageCharacterCard: UIImage
  var imageCharacterDesc: UIImage
  var locked: Bool
  var nameCharacter: String
  
  var topicInitial: String
  var labelInicial: String
  
  var topicMiddle: String
  var labelMiddle: String
  
  var topicEnd: String
  var labelEnd: String
  
  init(imageCharacterCard: UIImage, imageCharacterDesc: UIImage, locked: Bool, nameCharacter: String, topicInitial: String, labelInicial: String, topicMiddle: String, labelMiddle: String, topicEnd: String, labelEnd: String){
    self.imageCharacterCard = imageCharacterCard
    self.imageCharacterDesc = imageCharacterDesc
    self.locked = locked
    self.nameCharacter = nameCharacter
    self.topicInitial = topicInitial
    self.labelInicial = labelInicial
    self.topicMiddle = topicMiddle
    self.labelMiddle = labelMiddle
    self.topicEnd = topicEnd
    self.labelEnd = labelEnd
  }
  
  init(){
    self.imageCharacterCard = UIImage()
    self.imageCharacterDesc = UIImage()
    self.locked = true
    self.nameCharacter = ""
    self.topicInitial = ""
    self.labelInicial = ""
    self.topicMiddle = ""
    self.labelMiddle = ""
    self.topicEnd = ""
    self.labelEnd = ""
  }
}
