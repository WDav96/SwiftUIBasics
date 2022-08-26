//
//  MainView.swift
//  SwiftUIBasics
//
//  Created by Wilson David Molina Lozano on 23/08/22.
//

import SwiftUI

struct AddSubviews: View {
    var body: some View {
        ScrollView {
            VStack {
                StackViews()
                ImageView()
                
                Divider().padding()
                
                UIKitWithSwiftUI().frame(height: 400)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        AddSubviews()
    }
}
