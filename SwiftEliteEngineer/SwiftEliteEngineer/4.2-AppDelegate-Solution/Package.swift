// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "4.2-AppDelegate-Solution",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "4.2-AppDelegate-Solution",
            targets: ["4.2-AppDelegate-Solution"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "4.2-AppDelegate-Solution",
            dependencies: []
        )
    ]
)
