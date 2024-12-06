// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VDTFlutter",
        platforms: [
            .iOS(.v14),
        ],
    products: [
        .library(
            name: "VDTFlutter",
            targets: ["VDTFlutter"]),
    ],
    targets: [
        .target(
            name: "VDTFlutter",
            dependencies: ["App", "Flutter"]
        ),
        .binaryTarget(name: "App",
                      url: "https://github.com/MarcoMirisola/Test/releases/download/0.0.1/App.xcframework.zip",
                      checksum: "e267904e13c2d212dcd08445e5c34d2f7253f167835d780624205e4d4c8a5492"),
        .binaryTarget(name: "Flutter",
                      url: "https://github.com/MarcoMirisola/Test/releases/download/0.0.1/Flutter.xcframework.zip",
                      checksum: "62fe6a8006a0b2cf23c6baab87bd10029fe0c5092c59b84baaaea2989cf80420"),
                

    ]
)
