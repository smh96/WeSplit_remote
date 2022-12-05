//
//  ContentView.swift
//  WeSplit
//
//  Created by Sander Haug on 05/12/2022.
//

import SwiftUI

struct ContentView: View {
    // Observes change of name
   @State private var name = ""
    
    var body: some View {
        Form {
            // updates name variable after input
            // Two way binding: bind textfield so any changes made are updated to property
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
