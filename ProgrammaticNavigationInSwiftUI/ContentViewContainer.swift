//
//  ContentViewContainer.swift
//  ProgrammaticNavigationInSwiftUI
//
//  Created by Ramill Ibragimov on 03.09.2023.
//

import Foundation
import SwiftUI

struct ContentViewContainer: View {
    
    @State private var routes: [Route] = []
    
    var body: some View {
        NavigationStack(path: $routes) {
            ContentView()
                .environment(\.navigate) { route in
                    routes.append(route)
                }
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .login:
                        Text("Login View")
                    case .detail(let product):
                        Text("Product: \(product.name) View")
                    }
                }
        }
    }
}
