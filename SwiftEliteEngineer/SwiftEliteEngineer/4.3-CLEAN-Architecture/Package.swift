// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "4.3-CLEAN-Architecture",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "4.3-CLEAN-Architecture",
            targets: ["4.3-CLEAN-Architecture"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "4.3-CLEAN-Architecture",
            dependencies: []
        )
    ]
)
