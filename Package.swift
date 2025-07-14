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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.0/App.xcframework.zip",
                      checksum: "c179456eed4ff7ab33e36411f81e14a52c1d375082b2efb99e59241b9b449889"),
        .binaryTarget(name: "Flutter",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.0/Flutter.xcframework.zip",
                      checksum: "c0348d7fff46c300aef70b2fed7dad41c57be59a4e000df6cf4e98f3961e27d2"),
        .binaryTarget(name: "device_info_plus",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.0/device_info_plus.xcframework.zip",
                      checksum: "5837256943fb1151e164c44eb1570578e0965a39496f0d365465b769684b0974"),
        .binaryTarget(name: "FlutterPluginRegistrant",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.0/FlutterPluginRegistrant.xcframework.zip",
                      checksum: "bcd9d555d34a469d9d6972707b297e109c3df9f5918a2f0d2e806dc87a29803a"),
        .binaryTarget(name: "vibration",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.0/vibration.xcframework.zip",
                      checksum: "531ab738ddecddfa04794191f3e3196486d100a5eb71903accb2da7ed1a9eb4a"),

    ]
)
