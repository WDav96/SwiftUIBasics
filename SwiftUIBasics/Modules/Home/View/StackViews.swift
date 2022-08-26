//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Wilson David Molina Lozano on 22/08/22.
//

import SwiftUI

struct StackViews: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("David Molina")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
            
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                    .padding(20)
            }
            
            Spacer()
            
            HStack {
                Text("iOS Developer")
                    .padding()
                    .background(Color.blue)
                
                Spacer()
                
                Text("3000000000")
                    .padding()
                    .background(Color.blue)
            }
            
        }
        .background(Color.gray)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StackViews()
    }
}
