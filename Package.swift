// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "DanceUIGraph",
    platforms: [
        .iOS(.v12),
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
            url: "https://github.com/OpenSwiftUIProject/DanceUIGraph-spm/releases/download/0.1.0/DanceUIRuntime.xcframework.zip",
            checksum: "b60bdd1d8b9d204aa73e40e7c2621d4d761d393c422e4fa41a5b40056c312f4c"
        ),
        .binaryTarget(
            name: "DanceUIGraph",
            url: "https://github.com/OpenSwiftUIProject/DanceUIGraph-spm/releases/download/0.1.0/DanceUIGraph.xcframework.zip",
            checksum: "cef6150cc4fcf7cf988424599f4593fb07f3b2680066df1c61795e5bed92e163"
        ),
    ]
)
