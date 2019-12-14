// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EpicappToolkit",
    products: [
        .library(
            name: "EpicappToolkit",
            targets: ["EpicappToolkit"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EpicappToolkit",
            dependencies: [],
            path: ".",
            exclude: ["EpicappToolkitTests", "Tests", "EpicappToolkit.podspec"]
        ),
        .testTarget(
            name: "EpicappToolkitTests",
            dependencies: ["EpicappToolkit"]
        ),
    ]
)
