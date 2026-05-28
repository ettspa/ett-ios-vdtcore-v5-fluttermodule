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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.2/App.xcframework.zip",
                      checksum: "e341f4d0acab5bac9a9705316be770ad5807225bf8b56914a03b3fa58acde1e2"),
        .binaryTarget(name: "Flutter",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.2/Flutter.xcframework.zip",
                      checksum: "cf5a1278ec7a36a50a8edd73b682b6a28f3d68f65c0bf76ef7293884686a8faf"),
        .binaryTarget(name: "device_info_plus",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.2/device_info_plus.xcframework.zip",
                      checksum: "8e315f4a626ba5566553cffac3d057e870249fc6485acefcf2ec87205ef7466a"),
        .binaryTarget(name: "FlutterPluginRegistrant",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.2/FlutterPluginRegistrant.xcframework.zip",
                      checksum: "7869bca5ee03f6f9f55623a0430d187390135a9ec8705f3a00fdb064b02578ce"),
        .binaryTarget(name: "vibration",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/1.0.2/vibration.xcframework.zip",
                      checksum: "47a72ad9eba78a77b005efe1b36b7e18110adfd7290e5b0d47ac3ac350c69637"),

    ]
)
