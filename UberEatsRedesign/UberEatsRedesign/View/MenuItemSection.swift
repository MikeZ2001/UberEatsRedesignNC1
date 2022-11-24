//
//  MenuItemSection.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 16/11/22.
//

import SwiftUI

struct MenuItemSection: View {
    
    @Environment (\.colorScheme) var colorScheme
    let option: MenuBarOptions
    @Binding var currentScrolledOption: MenuBarOptions
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            Text(option.menuBarTitle)
                .font(.title.bold())
            
            ForEach(option.foodItems) { foodItem in
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text(foodItem.title)
                            .font(.title2.bold())
                            .foregroundColor(titleColor)
                        
                        
                        Text(foodItem.description)
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text("Price \(foodItem.price)")
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                            .foregroundColor(titleColor)
                    }.padding()
                    
                    Spacer()
                    
                    Image(foodItem.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 88)
                        .clipped()
                        .cornerRadius(10)
                        .padding()
                        .overlay(alignment: .bottom){
                        
                            ZStack {
                                
                                Button(action: {
                                    
                                }, label: {
                                    
                                    Image(systemName: "plus")
                                        .frame(minWidth: 60, minHeight: 25)
                                        .background(.thickMaterial)
                                        .foregroundColor(titleColor)
                                        .cornerRadius(14)
                                        .padding(.bottom, 5)
                                    
                                })
                                
                            }
                            
                        }
                    
                }.background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(backgroundColor)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    
                )
                
                Divider()
                    .overlay(titleColor)
                
            }
        }
        .modifier(OffsetModifier(option: option,currentScrolledOption: $currentScrolledOption))
    }
    
    private var titleColor: Color{
        switch colorScheme{
        case .light:
            return .black
        case .dark:
            return .white
            
        @unknown default:
            return .white
        }
    }
    
    private var backgroundColor: Color{
        switch colorScheme{
        case .light:
            return .white
        case .dark:
            return .black
            
        @unknown default:
            return .white
        }
    }
    
}

struct MenuItemSection_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemSection(option: .japanese,currentScrolledOption: .constant(.japanese))
    }
}
