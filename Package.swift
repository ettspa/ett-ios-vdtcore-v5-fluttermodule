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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.4/App.xcframework.zip",
                      checksum: "f221355913594bd05524ebb43de865cebf56e453c2a3955d6114e5858e9d365b"),
        .binaryTarget(name: "Flutter",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.4/Flutter.xcframework.zip",
                      checksum: "fab6058d3c4a00f167109a48d2bd7b0f8e7f74b8adc1086affe69c690bc4b36a"),
        .binaryTarget(name: "device_info_plus",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.4/device_info_plus.xcframework.zip",
                      checksum: "dd7c5c67dadfff69e26baa653810cb36cbafda9d9ff9fb6decc2cbf4c271f682"),
        .binaryTarget(name: "FlutterPluginRegistrant",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.4/FlutterPluginRegistrant.xcframework.zip",
                      checksum: "d0d782e2060df34839b35f32417c14651944e864b1e0f6cc008c5768fcbd8b81"),
        .binaryTarget(name: "vibration",
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-fluttermodule/releases/download/0.0.4/vibration.xcframework.zip",
                      checksum: "5ac49acfa6e2cd6792acf6fa2f3eb4778e8146f1babd68c187101864cce4bf61"),

    ]
)
