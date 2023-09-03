//
//  EnvironmentValues+Ext.swift
//  ProgrammaticNavigationInSwiftUI
//
//  Created by Ramill Ibragimov on 03.09.2023.
//

import Foundation
import SwiftUI

extension EnvironmentValues {
    var navigate: (Route) -> Void {
        get { self[NavigateEnvironmentKey.self] }
        set { self[NavigateEnvironmentKey.self] = newValue }
    }
}
