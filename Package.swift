// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.2.20652
// Summary: TXLiteAVSDK_Player
// Description: TXLiteAVSDK Player is a playback component that enables you to integrate powerful video playback capabilities—comparable to
// those of Tencent Video—using just a few lines of code.

import PackageDescription

let package = Package(
    name: "Player_SwiftPM",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "Player_SwiftPM",
            targets: ["Player_SwiftPM"]
        ),
        .library(
            name: "TXLiteAVSDK_ReplayKitExt",
            targets: ["TXLiteAVSDK_ReplayKitExt"]
        ),
    ],
    targets: [
        // ==================== Binary Targets ====================

        .binaryTarget(
            name: "TXLiteAVSDK_Player",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.2/player/13.2.0.20652/TXLiteAVSDK_Player.xcframework.zip",
            checksum: "eaf9dc98fde4d86cab22bec1167bd56d1ea4bbb984b21e0727d9dc96a69c4955"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.2/player/13.2.0.20652/TXFFmpeg.xcframework.zip",
            checksum: "e8b7f357c4936a1972b493476850555157ef4f8529d05252acb788ecbc2cd2d7"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.2/player/13.2.0.20652/TXSoundTouch.xcframework.zip",
            checksum: "25cb5716e2966f028ceac4e41b7fec2bafbc8163d9e16dca19190d9e9b155ef1"
        ),
        .binaryTarget(
            name: "TXLiteAVSDK_ReplayKitExt",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.2/player/13.2.0.20652/TXLiteAVSDK_ReplayKitExt.xcframework.zip",
            checksum: "bce376f4002d0c249616f8535331c04cd57b9da7f21fad9a9782ebfdf930ed29"
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
            publicHeadersPath: nil,
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
