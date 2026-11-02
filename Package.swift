// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.6.0.21648
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.6/player/13.6.0.21648/TXLiteAVSDK_Player.xcframework.zip",
            checksum: "6456523aded9bba6df5a04ab0682fc9e7230ea22afba3ebf05cfc9dcb3d84c96"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.6/player/13.6.0.21648/TXFFmpeg.xcframework.zip",
            checksum: "31f14b02402464576bf14439e64fc0ec4de2178c412bd99cd1b84586e928e5fa"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.6/player/13.6.0.21648/TXSoundTouch.xcframework.zip",
            checksum: "c1e04f698afdf672331c8fdc3b4431b9790a45108c2aa468861b5204257a7bd9"
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
