// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIComponents",
    products: [
        .library(
            name: "UIComponents",
            targets: ["UIComponents"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "UIComponents",
            dependencies: []),
        .testTarget(
            name: "UIComponentsTests",
            dependencies: ["UIComponents"]),
    ]
)
