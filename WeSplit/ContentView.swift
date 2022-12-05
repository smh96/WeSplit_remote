//
//  ContentView.swift
//  WeSplit
//
//  Created by Sander Haug on 05/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Form {
                Section {
                    Text("Hello World")
                    Text("Hello World")
                }
                // Visual difference, use section
                Section {
                    Text("Hello World")
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
