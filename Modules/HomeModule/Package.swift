// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HomeModule",
    products: [
        .library(
            name: "HomeModule",
            targets: ["HomeModule"]),
    ],
    dependencies: [
        // MARK: Local Dependencies
        .package(path: "../CommonModule"),
        // MARK: Shared Dependencies
        .package(path: "../../Shared/UtilityModule")
    ],
    targets: [
        .target(
            name: "HomeModule",
            dependencies: [
                "CommonModule", "UtilityModule"
            ]),
        .testTarget(
            name: "HomeModuleTests",
            dependencies: ["HomeModule"]),
    ]
)
