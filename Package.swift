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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.3/App.xcframework.zip",
                      checksum: "b7207ff7d4565183d223a76a59dc3462275a8303f6a6b45ec2d189f6b53b3ff4"),
        .binaryTarget(name: "Flutter",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.3/Flutter.xcframework.zip",
                      checksum: "25d7398d9930550253352a24531236d30d4d6645af0d36ef6a739c0c46bca2b4"),
        .binaryTarget(name: "device_info_plus",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.3/device_info_plus.xcframework.zip",
                      checksum: "92be4935459933b8806ca127c439f7380b2f1d74650aac7292d10d0c3f8e8abc"),
        .binaryTarget(name: "FlutterPluginRegistrant",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.3/FlutterPluginRegistrant.xcframework.zip",
                      checksum: "7d17e11e300e461c80b1cccfb8104ab5f921e8e34550cf88bb631e8e38fbf108"),
        .binaryTarget(name: "vibration",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.3/vibration.xcframework.zip",
                      checksum: "7a33c46336fbebffd301253c17c95333443358c50e07a3dd8ceda667c0fb5ea6"),

    ]
)
