# DanceUIGraph SwiftPM Binary Package

This package vends prebuilt `DanceUIGraph` and `DanceUIRuntime` XCFrameworks for SwiftPM consumers.

Repository: `OpenSwiftUIProject/DanceUIGraph-spm`

Current release: `0.0.2`

## Supported Platforms

- iOS 13.0+
- iOS Simulator 13.0+
- macOS 10.15+

## Usage

Add the package dependency:

```swift
.package(
    url: "https://github.com/OpenSwiftUIProject/DanceUIGraph-spm.git",
    exact: "0.0.2"
)
```

Then depend on the `DanceUIGraph` product:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "DanceUIGraph", package: "DanceUIGraph-spm"),
    ],
    linkerSettings: [
        .linkedLibrary("c++"),
        .linkedLibrary("z"),
    ]
)
```

## Artifacts

- `DanceUIGraph.xcframework.zip`
  - Checksum: `030d3d2a1d4c6d076c08d5d967295760c5014ecf3c982d9f8e638275d6a9ca6e`
- `DanceUIRuntime.xcframework.zip`
  - Checksum: `ca2572173cdd2b4150599aaa6f7ebb5a3dd5059951a4f23da0070d9c59c4a9fc`

The artifacts are built from sibling checkouts of `DanceUIGraph`, `DanceUIRuntime`, and `DanceUIDependencies` with:

```sh
cd ../DanceUIGraph
SKIP_POD_INSTALL=1 scripts/build-xcframework.sh
```
