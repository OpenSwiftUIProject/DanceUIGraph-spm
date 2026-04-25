// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "DanceUIGraph",
    platforms: [
        .iOS(.v13),
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
            url: "https://github.com/OpenSwiftUIProject/DanceUIGraph-spm/releases/download/0.0.1/DanceUIRuntime.xcframework.zip",
            checksum: "020f4853a71344d8b2f3b028fd7ed6eeaf99c1dcd11e42f53eed1593ef8fba42"
        ),
        .binaryTarget(
            name: "DanceUIGraph",
            url: "https://github.com/OpenSwiftUIProject/DanceUIGraph-spm/releases/download/0.0.1/DanceUIGraph.xcframework.zip",
            checksum: "c5975153aa148394ead0182a7286c76877b2edca1ad587ac5c815420437de0e3"
        ),
    ]
)
