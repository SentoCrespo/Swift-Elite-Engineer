// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "4.1-SOLID",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "4.1-SOLID",
            targets: ["4.1-SOLID"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "4.1-SOLID",
            dependencies: []
        )
    ]
)
