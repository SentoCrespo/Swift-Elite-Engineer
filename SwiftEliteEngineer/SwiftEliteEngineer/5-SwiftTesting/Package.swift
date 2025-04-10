// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "5-SwiftTesting",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "5-SwiftTesting",
            targets: ["5-SwiftTesting"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "5-SwiftTesting",
            dependencies: []
        ),
        .testTarget(
            name: "5-SwiftTestingTests",
            dependencies: ["5-SwiftTesting"]
        )
    ]
)
