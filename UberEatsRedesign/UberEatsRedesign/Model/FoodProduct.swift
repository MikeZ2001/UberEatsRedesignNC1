//
//  FoodProduct.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 16/11/22.
//

import Foundation

struct FoodProduct: Identifiable{

    var id = UUID().uuidString
    var title: String
    var description: String
    var imageName: String
    var price: String
    
}


