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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.3/App.xcframework.zip",
                      checksum: "26acd807424fa919155161ef7032cf185952e11fe5648e17a8bc9b185590824a"),
        .binaryTarget(name: "Flutter",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.3/Flutter.xcframework.zip",
                      checksum: "a49b973cc80c0dcb45eae5403d16f33ef9fe02e947c603bd6d32ac23ebc4b5df"),
        .binaryTarget(name: "device_info_plus",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.3/device_info_plus.xcframework.zip",
                      checksum: "33ebcb3b60bda33bc02ca20db6d65ed113e5389345b913816afa37b830f0f55d"),
        .binaryTarget(name: "FlutterPluginRegistrant",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.3/FlutterPluginRegistrant.xcframework.zip",
                      checksum: "82b92b3522ebcb5613508946393775ed7f08b0967e98dbc04412551d8c6c2ec0"),
        .binaryTarget(name: "vibration",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.3/vibration.xcframework.zip",
                      checksum: "5f9b088df02451f6ee13e5eec81d0159c6171491878476c51217f5307013472a"),

    ]
)
