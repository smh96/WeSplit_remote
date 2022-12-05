//
//  ContentView.swift
//  WeSplit
//
//  Created by Sander Haug on 05/12/2022.
//

import SwiftUI

struct ContentView: View {
    // @State allows to workaround limitation of structs. Hence structs are fixed.
    // @State here are for simpel properties, stored in 1 view
   @State private var tapCount = 0
    var body: some View {
        Button("Tapcount: \(tapCount)") {
            tapCount += 1
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
