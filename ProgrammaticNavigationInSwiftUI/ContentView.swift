//
//  ContentView.swift
//  ProgrammaticNavigationInSwiftUI
//
//  Created by Ramill Ibragimov on 03.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.navigate) private var navigate
    
    var body: some View {
        VStack {
            Button("Login") {
                navigate(.login)
            }
            Button("Product Detail") {
                navigate(.detail(Product(name: "SwiftUI")))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewContainer()
    }
}
