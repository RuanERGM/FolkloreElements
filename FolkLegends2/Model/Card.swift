import Foundation
import UIKit

struct Card : Codable {
    
    let imageCharacterCard: String
    let imageCharacterDesc: String
    let locked: Bool
    let nameCharacter: String

    let topicInitial: String
    let labelInicial: String

    let topicMiddle: String
    let labelMiddle: String

    let topicEnd: String
    let labelEnd: String

    let idDoor: Int

    init(){
        self.imageCharacterCard = ""
        self.imageCharacterDesc = ""
        self.locked = true
        self.nameCharacter = ""
        self.topicInitial = ""
        self.labelInicial = ""
        self.topicMiddle = ""
        self.labelMiddle = ""
        self.topicEnd = ""
        self.labelEnd = ""
        self.idDoor = 0
    }
}

struct sampleCards: Codable {
    var bestiaryCards: [Card]
}

