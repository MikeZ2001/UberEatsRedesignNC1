//
//  OffsetKey.swift
//  UberEatsRedesign
//
//  Created by Michele Zurlo on 16/11/22.
//

import Foundation
import SwiftUI

struct OffsetKey: PreferenceKey{
    
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        
        value = nextValue()
        
    }
    
}

