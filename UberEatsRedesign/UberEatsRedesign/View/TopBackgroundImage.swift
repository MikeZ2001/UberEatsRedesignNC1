//
//  TopBackgroundImage.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 17/11/22.
//

import SwiftUI

struct TopBackgroundImage: View {
    
    var body: some View {
        
        Rectangle()
            .ignoresSafeArea(.all)
            .frame(maxHeight: 200)
            .overlay{
            
                Image("topBackgroundImage")
                    .resizable()
                    .ignoresSafeArea(.all)
                    
            }
        
    }
    
}

struct TopBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        TopBackgroundImage()
    }
}
