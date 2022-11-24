//
//  StoreInformationView.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 17/11/22.
//

import SwiftUI

struct StoreInformationView: View {
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: 8) {
            HStack{
                
                Text("Mike Food Store")
                    .font(.title).bold()
                    .padding(.bottom)
                
                
                Spacer()
            }.padding(.horizontal)
            
            HStack{
            
                Image(systemName: "star")
                Text("4.5")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Image(systemName: "location")
                Text("0.5km")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Image(systemName: "clock")
                Text("25m")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Spacer()
                
            }.padding(.horizontal)
            
            HStack{
                Text("Japanese Food | American Food | Italian Food")
                    .font(.subheadline)
                    .padding(.horizontal)
                
                Spacer()
                
            }
        }
    }
}

struct StoreInformationView_Previews: PreviewProvider {
    static var previews: some View {
        StoreInformationView()
    }
}
