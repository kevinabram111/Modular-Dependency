// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoginModule",
    products: [
        .library(
            name: "LoginModule",
            targets: ["LoginModule"]),
    ],
    dependencies: [
        // MARK: Local Dependencies
        .package(path: "../CommonModule"),
        // MARK: Shared Dependencies
        .package(path: "../../Shared/UtilityModule")
    ],
    targets: [
        .target(
            name: "LoginModule",
            dependencies: [
                "CommonModule", "UtilityModule"
            ]),
        .testTarget(
            name: "LoginModuleTests",
            dependencies: ["LoginModule"]),
    ]
)
