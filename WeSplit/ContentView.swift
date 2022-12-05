//
//  ContentView.swift
//  WeSplit
//
//  Created by Sander Haug on 05/12/2022.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack {
            Form {
 ///            Picker("Select your student", selection: $selectedStudent) {
 ///                   ForEach(students, id: \.self) {
 ///                       Text($0)
 ///                   }
 ///               }
                Picker(selection: $selectedStudent, label: Text("Your selected student")) {
                    ForEach(students, id: \.self) {
                        // id: what makes it unique?
                        Text($0)
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
