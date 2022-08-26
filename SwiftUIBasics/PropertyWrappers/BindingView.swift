//
//  BindingView.swift
//  SwiftUIBasics
//
//  Created by Wilson David Molina Lozano on 25/08/22.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    
    @ObservedObject var user: UserData
    
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            Button("Substract 1") {
                value -= 1
            }
            Button("Update data") {
                user.name = "Updated name"
                user.age = 100
            }
            NavigationLink(destination: EnvironmentView(), tag: 1, selection: $selection) {
                Button("Go to Environment view") {
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData())
    }
}
