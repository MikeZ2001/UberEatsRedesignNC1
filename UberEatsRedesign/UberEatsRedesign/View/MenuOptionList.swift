//
//  MenuOptionList.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 16/11/22.
//

import SwiftUI

struct MenuOptionList: View {
    
    @Binding var selectedOption: MenuBarOptions
    @Namespace var animation
    @Binding var currentScrolledOption: MenuBarOptions
    
    @Environment (\.colorScheme) var colorScheme
    
    var body: some View {
    
        ScrollViewReader{proxy in
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing: 30){
                    
                    
                    ForEach(MenuBarOptions.allCases, id: \.self){ item in
                        
                        VStack{
                            Text(item.menuBarTitle)
                            
                                .foregroundColor(item == currentScrolledOption ?titleColor : .gray)
                                
                                
                                
                            
                            if currentScrolledOption == item{
                                Capsule()
                                    .fill(titleColor)
                                    .matchedGeometryEffect(id: "item", in: animation)
                                    .frame(height: 2)
                                    //.padding(.horizontal,-10)
                            }else{
                                Capsule()
                                    .fill(.clear)
                                    .frame(height: 2)
                                    //.padding(.horizontal,-10)
                            }
                        }.onTapGesture {
                            withAnimation(.easeInOut){
                                self.selectedOption = item
                                proxy.scrollTo(item,anchor: .topTrailing)
                            }
                        }
                        
                    }
                    .onChange(of: currentScrolledOption) { _ in
                        proxy.scrollTo(currentScrolledOption,anchor: .topTrailing)
                        
                    }
                    
                    
                }
            }
            
        }
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
}

struct MenuOptionList_Previews: PreviewProvider {
 static var previews: some View {
 
     MenuOptionList(selectedOption: .constant(.japanese) ,currentScrolledOption: .constant(.japanese))
 }
 }
 
 
