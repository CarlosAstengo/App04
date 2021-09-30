//
//  Games.swift
//  App04-Lista
//
//  Created by Carlos Astengo Macias on 30/09/21.
//

import SwiftUI

struct Game: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var score: Int
    var genre: String
}

extension Game {
    static let Pokemon = Game(name: "Pokemon: Let's Go Pikachu", score: 79, genre: "Adventure Game")
    static let MarioParty = Game(name: "Super Mario Party", score: 78, genre: "Party Game")
    static let Zelda = Game(name: "The Legend Of Zelda: Breath of the Wild", score: 97, genre: "Adventure Game")
    static let DragonBall = Game(name: "Dragon Ball Fighter Z", score: 87, genre: "Fighting Game")
    static let MarioOyssey = Game(name: "Super Mario Odyssey", score: 97, genre: "Plataformer Game")
    
    static let COD = Game(name: "Call of Duty: Modern Warfare 2019", score: 80, genre: "Shooter Game")
    static let NBA = Game(name: "NBA 2k20", score: 75, genre: "Sports Game")
    static let Borderland = Game(name: "Borderlands 3", score: 91, genre: "Looter-Shooter Game")
    static let MortalKombat = Game(name: "Mortal Kombat 11", score: 88, genre: "Fighting Game")
    static let StarWars = Game(name: "Star Wars Jedi: Fallen Order", score: 79, genre: "Action Game")
    
    static let BO = Game(name: "Call of Duty: Black Ops: Cold War", score: 77, genre: "Shooter Game")
    static let AnimalCrossing = Game(name: "Animal Crossing: New Horizons", score: 88, genre: "City Builder Game")
    static let AC = Game(name: "Assasin's Creed: Valhala", score: 87, genre: "Stealth Game")
    static let TLOU = Game(name: "The Last Of Us: Part 2", score: 67, genre: "Adventure Game")
    static let Tsushima = Game(name: "Ghost of Tsushima", score: 92, genre: "Action Game")
    
    static let Celeste = Game(name: "Celeste", score: 97, genre: "Plataformer Game")
    static let Donut = Game(name: "Donut Country", score: 86, genre: "Casual Game")
    static let Gris = Game(name: "Gris", score: 77, genre: "Story Rich Game")
    static let DeadCells = Game(name: "Dead CElls", score: 95, genre: "Rougue-Like Game")
    static let Subnautica = Game(name: "Subnautica", score: 89, genre: "Survival Game")
    
    static let GTFO = Game(name: "GTFO", score: 77, genre: "Shooter Game")
    static let One = Game(name: "One Step From Eden", score: 78, genre: "City Builder Game")
    static let Ooblets = Game(name: "Ooblets", score: 91, genre: "Stealth Game")
    static let Path = Game(name: "Pathless", score: 67, genre: "Adventure Game")
    static let Phas = Game(name: "PhASMOPHOBIA", score: 92, genre: "Action Game")
    
    static let BA = Game(name: "Baba is You", score: 92, genre: "Shooter Game")
    static let IND = Game(name: "Indivisible", score: 88, genre: "City Builder Game")
    static let KatanaZero = Game(name: "Katana Zero", score: 87, genre: "Stealth Game")
    static let slay = Game(name: "Slay The Spire", score: 88, genre: "Adventure Game")
    static let Risk = Game(name: "Risk of Rain 2", score: 98, genre: "Action Game")
    
    static let G2018 = [Pokemon,MarioParty,Zelda,DragonBall,MarioOyssey]
    static let G2019 = [COD,NBA,Borderland,MortalKombat,StarWars]
    static let G2020 = [BO,AnimalCrossing,AC,TLOU,Tsushima]

    static let I2018 = [Celeste,Donut,Gris,DeadCells,Subnautica]
    static let I2019 = [GTFO,One,Ooblets,Path,Phas]
    static let I2020 = [BA,IND,KatanaZero,slay,Risk]
}
