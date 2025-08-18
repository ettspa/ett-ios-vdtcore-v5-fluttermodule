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
            dependencies: ["App", "Flutter", "device_info_plus", "FlutterPluginRegistrant", "vibration"],
        ),
        .binaryTarget(name: "App",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.1/App.xcframework.zip",
                      checksum: "f2c4b3d839284a34b395018c4472084bc3da77562f6f89afb23d3bdae3e58a0c"),
        .binaryTarget(name: "Flutter",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.1/Flutter.xcframework.zip",
                      checksum: "e95c1611dbd5976066a11a427204c22f954f4a2ccede9ccbb137af02fdef3d1a"),
        .binaryTarget(name: "device_info_plus",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.1/device_info_plus.xcframework.zip",
                      checksum: "2cf8d5703679550e543ff340fc23039631a3e039841eea8432725f8f107f8618"),
        .binaryTarget(name: "FlutterPluginRegistrant",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.1/FlutterPluginRegistrant.xcframework.zip",
                      checksum: "2a9bc304bb9f2aa51df11d0f2a5ac538b277d5fe7cff481531fc9d2ff94b2d60"),
        .binaryTarget(name: "vibration",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.1/vibration.xcframework.zip",
                      checksum: "fc125fa12e5a0f094d834d94d5182feec7f820028b24742159e9fcba50731abd"),

    ]
)
