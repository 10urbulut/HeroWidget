//
//  SuperHero.swift
//  HeroWidget
//
//  Created by Onur Bulut on 24.09.2023.
//

import Foundation

struct SuperHero : Identifiable, Codable {
    var id: String{image}
    
    let image : String
    let name : String
    let realName : String
    
}
let superman = SuperHero(image: "superman", name: "Superman", realName: "Clark Kent")
let batman = SuperHero(image: "batman", name: "Batman", realName: "Bruce Wayne")
let ironman = SuperHero(image: "ironman", name: "Ironman", realName: "Tony Stark")
