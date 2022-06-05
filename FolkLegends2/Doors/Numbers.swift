//
//  Numbers.swift
//  FolkLegends2
//
//  Created by Anna Alicia Milani on 03/06/22.
//

import Foundation

class Numbers {
    var number : Int!
    var image : String!
    var id: KeyTypes
    var imageLocked: String!
    var keyUnlocked: KeyTypes
    var numOfCards: Int
    
    init(prNumber: Int, prImage: String, prId: KeyTypes, prImageLocked: String, prKeyUnlocked: KeyTypes, prNumOfCards: Int){
        self.number = prNumber
        self.image = prImage
        self.id = prId
        self.imageLocked = prImageLocked
        self.keyUnlocked = prKeyUnlocked
        self.numOfCards = prNumOfCards
    }
    
    init(){
        self.number = 0
        self.image = ""
        self.id = .vazio
        self.imageLocked = ""
        self.keyUnlocked = .vazio
        self.numOfCards = 0
    }
}

enum KeyTypes {
    case agua, terra, fogo, ar, vazio, todos
}
