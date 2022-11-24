//
//  OffsetModifier.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 16/11/22.
//

import Foundation
import SwiftUI

struct OffsetModifier: ViewModifier {
    
    let option: MenuBarOptions
    
    @Binding var currentScrolledOption: MenuBarOptions
    
    func body(content: Content) -> some View {
        
        content
            .overlay(
                
                GeometryReader{ proxy in
                    
                    Color.clear
                        .preference(key: OffsetKey.self, value: proxy.frame(in: .named("scroll")))
                    
                }
            )
            .onPreferenceChange(OffsetKey.self){ proxy in
                let offset = proxy.minY
                
                withAnimation{
                    //this line of code figure out the offset and update the current option
                    currentScrolledOption = (offset < 20 && -offset < (proxy.midX / 2) && currentScrolledOption != option) ? option : currentScrolledOption
                }
                
            }
        
    }
}

