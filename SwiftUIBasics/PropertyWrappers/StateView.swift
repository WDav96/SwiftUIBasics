//
//  StateView.swift
//  SwiftUIBasics
//
//  Created by Wilson David Molina Lozano on 25/08/22.
//

import SwiftUI

class UserData: ObservableObject {
    
    @Published var name = "SomeName"
    @Published var age = 0
}

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("The current value is \(value)")
                Button("Add 1") {
                    value += 1
                }
                Text("Mi nombre es \(user.name) y tengo \(user.age) años")
                Button("Update data") {
                    user.name = "David"
                    user.age = 24
                }
                NavigationLink(destination: BindingView(value: $value, user: user), tag: 1, selection: $selection) {
                    Button("Go to Binding view") {
                        selection = 1
                    }
                }
            }.navigationTitle("State View")
        }
    }
    
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
