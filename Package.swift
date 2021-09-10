// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MPKioskAssets",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MPKioskAssets",
            targets: ["MPKioskAssets"]),
    ],
    dependencies: [
      .package(url: "https://github.com/rmeitzler/XMLTree", from: "1.1.11"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MPKioskAssets",
            dependencies: [],
            sources: [
              "KioskConfig.swift",
              "MPKioskAssets.swift"
            ],
            resources: [.process("Resources"),
                        .process("KioskImages.xcassets"),
                        .process("KioskColors.xcassets")]
        ),
        .testTarget(
            name: "MPKioskAssetsTests",
            dependencies: ["MPKioskAssets"]),
    ]
)
