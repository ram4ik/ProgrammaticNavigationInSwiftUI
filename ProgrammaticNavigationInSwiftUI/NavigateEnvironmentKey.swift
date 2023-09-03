//
//  NavigateEnvironmentKey.swift
//  ProgrammaticNavigationInSwiftUI
//
//  Created by Ramill Ibragimov on 03.09.2023.
//

import Foundation
import SwiftUI

struct NavigateEnvironmentKey: EnvironmentKey {
    static var defaultValue: (Route) -> Void = { _ in }
}
