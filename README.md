# UnionModify

A lightweight Swift package providing a convenient conditional modifier for SwiftUI views.

## Installation

Add `UnionModify` to your project using Swift Package Manager.

In Xcode:
1. Go to File -> Add Packages...
2. Enter the package repository URL: `https://github.com/unionst/union-modify` 
3. Add the package to your app target.

Or add it to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/unionst/union-modify", from: "1.0.0")
]
```

## Usage

The `modify` view extension allows you to conditionally apply transformations to a view. If the transform closure returns `nil` or `EmptyView`, the original view is returned.

It's useful for applying modifiers based on conditions or availability checks.

```swift
import SwiftUI
import UnionModify

struct MyView: View {
    var body: some View {
        Text("Hello")
            .modify { view in
                if #available(iOS 15.0, *) {
                    view.padding()
                }
            }
    }
}
```

## Platforms

- iOS 13+
- macOS 10.15+
- tvOS 13+
- watchOS 6+
- visionOS 1+

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.
