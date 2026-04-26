// swift-tools-version: 5.9

import PackageDescription

let linkerSettings: [LinkerSetting] = [
    .linkedLibrary("c++"),
    .linkedLibrary("z"),
]

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
            url: "https://github.com/OpenSwiftUIProject/DanceUIGraph/releases/download/0.0.3/DanceUIRuntime.xcframework.zip",
            checksum: "f961c4a14bec5d24247e6e533725241e9b18e36b5ecc081d552e0c906b7281b9"
        ),
        .binaryTarget(
            name: "DanceUIGraph",
            url: "https://github.com/OpenSwiftUIProject/DanceUIGraph/releases/download/0.0.3/DanceUIGraph.xcframework.zip",
            checksum: "c9bf980c6ef6730e74d1b1930ac932672824d6aa1e96766b57c736913ea975d1"
        ),
        .testTarget(
            name: "DanceUIGraphTests",
            dependencies: [
                "DanceUIRuntime",
                "DanceUIGraph",
            ],
            linkerSettings: linkerSettings
        ),
    ]
)
