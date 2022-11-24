//
//  MainView.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 17/11/22.
//

import SwiftUI

struct MainView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button {
            //Action
            showingSheet.toggle()
        } label: {
            Text("Tap me")
        }.sheet(isPresented: $showingSheet) {
            NavigationView {
                StoreMenuView()
                
            }
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
