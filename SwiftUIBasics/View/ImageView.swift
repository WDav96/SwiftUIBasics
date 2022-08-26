//
//  ImageView.swift
//  SwiftUIBasics
//
//  Created by Wilson David Molina Lozano on 22/08/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("SwiftLogo")
                .resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 3))
                .shadow(color: Color.yellow, radius: 10)
            
            Image(systemName: "person.fill.badge.minus")
                .resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 3))
                .shadow(color: Color.yellow, radius: 10)
                .foregroundColor(.black)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
