// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.5.0.21355
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/player/13.5.0.21355/TXLiteAVSDK_Player.xcframework.zip",
            checksum: "a6d12d18a9788dac048d58407e6ee9ac6bec9fc3905b680256becca718355120"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/player/13.5.0.21355/TXFFmpeg.xcframework.zip",
            checksum: "06cec3462d3dc48f0538f9989c5044452aeb8e261fce039d7f82bb091e9b471e"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/player/13.5.0.21355/TXSoundTouch.xcframework.zip",
            checksum: "c5dc7f9feb1c98805dace58908be62ceeb5f953812d5c75b483d03464a1a3ee1"
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
