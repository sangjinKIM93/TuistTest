// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIComponents",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "UIComponents",
            targets: ["UIComponents"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.1.3"),
    ],
    targets: [
        .target(
            name: "UIComponents",
            dependencies: [
                .product(name: "Lottie", package: "lottie-spm")
            ]),
        .testTarget(
            name: "UIComponentsTests",
            dependencies: ["UIComponents"]),
    ]
)
