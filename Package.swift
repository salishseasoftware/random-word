// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "random-word",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        .executable(name: "random-word", targets: ["random-word"]),
        .library(name: "RandomWord", targets: ["RandomWord"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.3.0"),
    ],
    targets: [
        .target(
            name: "RandomWord",
            dependencies: []
        ),
        .target(
            name: "random-word",
            dependencies: [
                "RandomWord",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .testTarget(
            name: "random-wordTests",
            dependencies: ["random-word"]
        ),
    ]
)
