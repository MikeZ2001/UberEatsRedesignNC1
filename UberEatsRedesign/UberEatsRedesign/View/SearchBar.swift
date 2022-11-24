//
//  SearchBar.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 21/11/22.
//

import SwiftUI

struct SearchBar: View {
    @State var searchedText = ""
    @State var showingSearchView = false
    var body: some View {
        NavigationView {
        
            Text("")
                .searchable(text: $searchedText
                            , prompt: "Search menu item")
            
    
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
            
    }
}
