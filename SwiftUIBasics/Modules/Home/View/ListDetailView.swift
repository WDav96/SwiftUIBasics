//
//  ListDetailView.swift
//  SwiftUIBasics
//
//  Created by Wilson David Molina Lozano on 23/08/22.
//

import SwiftUI

struct ListDetailView: View {
    
    @Binding var isFavorite: Bool
    
    var programer: Programmer
    
    var body: some View {
        VStack {
            programer.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5)
            HStack {
                Text(programer.name).font(.largeTitle)
                
                Button {
                    isFavorite.toggle()
                } label: {
                    isFavorite ? Image(systemName: "star.fill").foregroundColor(.yellow) : Image(systemName: "star").foregroundColor(.gray)
                }
            }
            
            Text(programer.lenguages).font(.title)
            
            Spacer()
        }
    }
    
    private func buttonAction() {
        
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(isFavorite: .constant(false), programer: Programmer(id: 1, name: "David", lenguages: "Swift, Kotlin", avatar: Image(systemName: "person.fill"), favorite: true))
    }
}
