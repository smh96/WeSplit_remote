//
//  ContentView.swift
//  WeSplit
//
//  Created by Sander Haug on 05/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var isFocused: Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "EUR"))
                        .keyboardType(.decimalPad)
                        .focused($isFocused)
                        .toolbar {
                            ToolbarItemGroup(placement: .keyboard) {
                                Spacer()
                                
                                Button("Done") {
                                    isFocused = false
                                }
                            }
                        }
                    
                    Picker(selection: $numberOfPeople, label: Text("Select participants")) {
                        ForEach(2..<26) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                    
                }
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("What percentage would you like to tip?")
                }
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "EUR"))
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
