//
//  MenuBarEnum.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 16/11/22.
//

import Foundation
enum MenuBarOptions: Int, CaseIterable{
    
    case japanese
    case american
    case italian
    case promo 
    
    
    var menuBarTitle:String{
        switch self{
        case .japanese: return "Japanese"
        case .italian: return "Italian"
        case .american: return "American"
        case .promo: return "Promotion"
        }
    }
    
    var foodItems: [FoodProduct]{
        switch self {
        case .japanese:
            return japaneseFood
        case .american:
            return americanFood
        case .italian:
            return italianFood
        case .promo:
            return americanFood + italianFood
        }
    }
}
