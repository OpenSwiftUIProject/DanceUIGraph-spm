// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "DanceUIGraph",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "DanceUIGraph",
            targets: [
                "DanceUIRuntime",
                "DanceUIGraph",
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "DanceUIRuntime",
            url: "https://github.com/OpenSwiftUIProject/DanceUIGraph-spm/releases/download/0.0.2/DanceUIRuntime.xcframework.zip",
            checksum: "ca2572173cdd2b4150599aaa6f7ebb5a3dd5059951a4f23da0070d9c59c4a9fc"
        ),
        .binaryTarget(
            name: "DanceUIGraph",
            url: "https://github.com/OpenSwiftUIProject/DanceUIGraph-spm/releases/download/0.0.2/DanceUIGraph.xcframework.zip",
            checksum: "030d3d2a1d4c6d076c08d5d967295760c5014ecf3c982d9f8e638275d6a9ca6e"
        ),
    ]
)
