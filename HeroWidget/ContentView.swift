//
//  ContentView.swift
//  HeroWidget
//
//  Created by Onur Bulut on 24.09.2023.
//

import SwiftUI
import WidgetKit


let superHeroArray = [superman,batman,ironman]
struct ContentView: View {
    
    @AppStorage("hero", store: UserDefaults(suiteName: "group.dev.onurbulut.HeroWidget"))
    
    var heroData : Data = Data()
    
    
    
    var body: some View {
        VStack {
            ForEach(superHeroArray) { hero in
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                }
            }
        }
        .padding()
    }
    func saveToDefaults(hero: SuperHero){
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            WidgetCenter.shared.reloadAllTimelines()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
