//
//  ContentView.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 16/11/22.
//

import SwiftUI

struct StoreMenuView: View {
    
    @State private var selectedOption: MenuBarOptions = .japanese
    @State private var currentScrolledOption: MenuBarOptions = .japanese
    
    var body: some View {
        
        VStack {
            
            TopBackgroundImage()
                .overlay(alignment: .top){
                    ToolBarView()
                        .padding()
                }
            
            StoreInformationView()
            
            //Horizontal Scroll View for menu categories
            MenuOptionList(selectedOption: $selectedOption, currentScrolledOption: $currentScrolledOption)
                .padding([.top,.horizontal])
                .overlay(
                    Divider()
                        .padding(.horizontal,-16)
                    ,alignment: .bottom
                )
            
            //Vertical Scroll View for menu categories item
            ScrollViewReader{proxy in
                
                ScrollView(.vertical,showsIndicators: false){
                    
                    VStack {
                        
                        ForEach(MenuBarOptions.allCases, id: \.self){option in
                            
                            //Creation of the item for each menu category
                            MenuItemSection(option: option,currentScrolledOption: $currentScrolledOption)
                            
                        }
                        
                    }.padding(.horizontal)
                        .onChange(of: selectedOption) { _ in
                            withAnimation(.easeInOut){
                                
                                proxy.scrollTo(selectedOption,anchor: .topTrailing)
                                
                            }
                        }
                    
                }
                .coordinateSpace(name: "scroll")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StoreMenuView()
    }
}
