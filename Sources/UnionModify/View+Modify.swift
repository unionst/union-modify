//
//  View+Modify.swift
//  union-modify
//
//  Created by Ben Sage on 7/14/24.
//

import SwiftUI

extension View {
    @ViewBuilder
    public func modify(@ViewBuilder _ transform: (Self) -> (some View)?) -> some View {
        if let view = transform(self), !(view is EmptyView) {
            view
        } else {
            self
        }
    }
}
