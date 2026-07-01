// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.4.0.21062
// Summary: TXLiteAVSDK_Player
// Description: TXLiteAVSDK Player is a playback component that enables you to integrate powerful video playback capabilities—comparable to
// those of Tencent Video—using just a few lines of code.

import PackageDescription

let package = Package(
    name: "Player_SwiftPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Player_SwiftPM",
            targets: ["Player_SwiftPM"]
        )
    ],
    targets: [
        // ==================== Binary Targets ====================

        .binaryTarget(
            name: "TXLiteAVSDK_Player",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/player/13.4.0.21062/TXLiteAVSDK_Player.xcframework.zip",
            checksum: "14e64498a2f0a9d739c189f0368d5ae5c8fb1c00abde88512e7df82f873b3b1f"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/player/13.4.0.21062/TXFFmpeg.xcframework.zip",
            checksum: "a5020a62c864a16332ddca80abc882e333a5babee098fb2be1a84e1e509de75f"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/player/13.4.0.21062/TXSoundTouch.xcframework.zip",
            checksum: "274db7a4c342fc7b58b509973acd044846d494ed73198b7d1e7d91f32d3f15b4"
        ),
        // ==================== Wrapper Target ====================

        .target(
            name: "Player_SwiftPM",
            dependencies: [
                "TXLiteAVSDK_Player",
                "TXFFmpeg",
                "TXSoundTouch"
            ],
            path: "Sources/PlayerWrapper",
            publicHeadersPath: "",
            linkerSettings: [
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MetalKit"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("VideoToolbox"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("Accelerate"),
                .linkedFramework("CoreServices"),
                .linkedFramework("ReplayKit"),
                .linkedLibrary("z"),
                .linkedLibrary("resolv"),
                .linkedLibrary("iconv"),
                .linkedLibrary("stdc++"),
                .linkedLibrary("c++"),
                .linkedLibrary("sqlite3"),
            ]
        ),
    ]
)
