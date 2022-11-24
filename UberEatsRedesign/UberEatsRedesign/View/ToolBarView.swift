//
//  ToolBarView.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 16/11/22.
//

import SwiftUI

struct ToolBarView: View {
    
    @State var showingSearchBar = false
    var body: some View {
        //HStack of the top
    
            HStack(spacing: 16){
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                    .frame(width: 50,height: 50)
                    .overlay(
                        
                        Button {
                            
                            
                        } label: {
                            
                                Image(systemName: "arrow.backward")
                                .font(.title2)
                                .background(.white)
                                .foregroundColor(.black)
                            
                        }
                        
                    )
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                    .frame(width: 50,height: 50)
                    .overlay(
                        
                        //Search Button
                        Button {
                            showingSearchBar.toggle()
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                                .background(.white)
                                .foregroundColor(.black)
                            
                            
                        }
                    )
            
            }
        
    }
    
}


struct ToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarView()
    }
}
