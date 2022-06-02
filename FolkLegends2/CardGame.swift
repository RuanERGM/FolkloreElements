//
//  CardGame.swift
//  FolkLegends2
//
//  Created by Anna Alicia Milani on 01/06/22.
//

import Foundation

class CardGame: Equatable {
    
    var life: Int
    var damage: Int
    var element: CardElement
    
    
    init(life: Int, damage: Int, element: CardElement){
        self.life = (life < 1 || life > 10) ? 1 : life
        self.damage = (damage < 1 || damage > 10) ? 1 : damage
        self.element = element
    }
    
    init(){
        let elements: [CardElement] = [.agua, .terra, .fogo, .ar]
        self.life = Int.random(in: 1...10)
        self.damage = Int.random(in: 1...10)
        self.element = elements[Int.random(in: 0..<elements.count)]
    }
    
    static func == (lhs: CardGame, rhs: CardGame) -> Bool {
        return (lhs.life == rhs.life && lhs.damage == rhs.damage && lhs.element == rhs.element)
    }
    
    func fight(enemy: CardGame) -> Int {
        let value = enemy.life - self.damage
        enemy.life = (value < 0) ? 0: value
        return enemy.life
    }
    
    func getElement() -> String {
        switch element {
        case .agua:
            return "agua"
        case .terra:
            return "terra"
        case .fogo:
            return "fogo"
        case .ar:
            return "ar"
        }
    }
}

enum CardElement {
    case agua, terra, fogo, ar
}
