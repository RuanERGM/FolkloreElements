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
    
    func getWeakness(elementF: CardElement) -> CardElement {
        switch elementF{
        case .agua:
            return .terra
        case .terra:
            return .fogo
        case .fogo:
            return .agua
        default:
            return .vazio
        }
    }
    
    func fight(enemy: CardGame) -> Int {
        var newEnemyLife = 0
        if getWeakness(elementF: enemy.element) == self.element{
            newEnemyLife = enemy.life - (self.damage + self.damage/5) // 20% a mais de dano
        } else {
            newEnemyLife = enemy.life - self.damage
        }
        enemy.life = (newEnemyLife < 0) ? 0: newEnemyLife
        return enemy.life
    }
    
    func counterattack(enemy: CardGame) -> Int {
        var newPlayerLife = 0
        
        if getWeakness(elementF: self.element) == enemy.element{
            newPlayerLife = self.life - (enemy.damage + enemy.damage/5) // 20%
        } else {
            newPlayerLife = self.life - enemy.damage
        }
        self.life = (newPlayerLife < 0) ? 0: newPlayerLife
        return self.life
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
        case .vazio:
            return "vazio"
        }
    }
}

enum CardElement {
    case agua, terra, fogo, ar, vazio
}
