// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.3.20845
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/player/13.3.0.20845/TXLiteAVSDK_Player.xcframework.zip",
            checksum: "b217d80c093ecf3f6414be49c1a73759bde9a67c9bd1dec2c015f4c39d760962"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/player/13.3.0.20845/TXFFmpeg.xcframework.zip",
            checksum: "5c27b0e7398ec64ea9b3207eb8a6277d2e20801ad22b3027a54a9eb4780e2031"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/player/13.3.0.20845/TXSoundTouch.xcframework.zip",
            checksum: "840734550dc6de2a0d3d4040be664bc6762b3cee348eaf4ab4db5fc162e305db"
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
