//
//  EnvironmentView.swift
//  SwiftUIBasics
//
//  Created by Wilson David Molina Lozano on 26/08/22.
//

import SwiftUI

struct EnvironmentView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView().environmentObject(UserData())
    }
}
