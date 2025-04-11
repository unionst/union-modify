// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "union-modify",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "UnionModify",
            targets: ["UnionModify"]
        ),
    ],
    targets: [
        .target(
            name: "UnionModify"
        ),
    ]
)
