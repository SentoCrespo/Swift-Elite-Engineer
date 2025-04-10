// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "4.3-CLEAN-Architecture-Solution",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "4.3-CLEAN-Architecture-Solution",
            targets: ["4.3-CLEAN-Architecture-Solution"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "4.3-CLEAN-Architecture-Solution",
            dependencies: [
                "DomainLayer",
                "DataLayer",
                "PresentationLayer"
            ]
        ),
        .target(
            name: "DomainLayer",
            dependencies: []
        ),
        .target(
            name: "DataLayer",
            dependencies: ["DomainLayer"]
        ),
        .target(
            name: "PresentationLayer",
            dependencies: ["DomainLayer", "DataLayer"]
        ),
    ]
)
