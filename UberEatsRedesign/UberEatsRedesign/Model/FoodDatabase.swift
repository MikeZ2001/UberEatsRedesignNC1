//
//  FoodDatabase.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 16/11/22.
//

import Foundation
var japaneseFood: [FoodProduct] = [
    
    .init(title: "Sushi", description: "Amazing sushi imported directly from Japan. Spicy tuna topped with avocado and mango", imageName: "japan-tapas", price: "$24"),
    
        .init(title: "Ramen Noodles", description: "You're not in college anymore, time to upgrad your Rame Noodles",imageName: "japanese-ramen" , price: "$14" )
    
]


var americanFood: [FoodProduct] = [
    .init(title: "Steak", description: "Grass fed beef cooked to absolute perfection. Literally melts in your mouth", imageName: "steak-house" , price: "$24"),
          
        .init(title: "Cheeseburger", description: "Let's just say this is an upgrade from McDonalds. Try it and see for yourself", imageName:
              "american-cheeseburger" , price: "$14"),
          
        .init(title: "Philly Cheesesteak", description: "Simply put, this will just make you happy. Shredded beef, onions, peppers, and cheese on a hoagie",imageName:"american-cheesesteak" ,price: "$30")]
        
          
var italianFood: [FoodProduct] = [
            .init(title: "Pizza", description: "Our handmade brick oven pizza. Topped with our famous cheese blend, basil, and tomatoes", imageName: "italian-pizza" , price: "$24"),
                  
                .init(title: "Carbonara", description: "There's pasta, and then theres pasta. If you don't know the difference, try this." , imageName:
                      "italian-pasta" , price: "$24")]
