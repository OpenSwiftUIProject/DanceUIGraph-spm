# DanceUIGraph SwiftPM Binary Package

This package vends prebuilt `DanceUIGraph` and `DanceUIRuntime` XCFrameworks for SwiftPM consumers.

The SwiftPM wrapper lives in `OpenSwiftUIProject/DanceUIGraph-spm`. The binary XCFramework release assets are hosted on `OpenSwiftUIProject/DanceUIGraph`.

## Supported XCFramework Slices

The binary artifacts support:

- iOS device: `ios-arm64`, iOS 13.0+
- iOS Simulator: `ios-arm64_x86_64-simulator`, iOS 13.0+
- macOS: `macos-arm64_x86_64`, macOS 10.15+

## Usage

Add the package dependency:

```swift
.package(
    url: "https://github.com/OpenSwiftUIProject/DanceUIGraph-spm.git",
    from: "0.0.3"
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

## Binary Artifacts

The `0.0.3` package manifest downloads both artifacts from:

```text
https://github.com/OpenSwiftUIProject/DanceUIGraph/releases/tag/0.0.3
```

- `DanceUIGraph.xcframework.zip`
  - Checksum: `c9bf980c6ef6730e74d1b1930ac932672824d6aa1e96766b57c736913ea975d1`
- `DanceUIRuntime.xcframework.zip`
  - Checksum: `f961c4a14bec5d24247e6e533725241e9b18e36b5ecc081d552e0c906b7281b9`

## Build Notes

The artifacts are built from sibling checkouts of `DanceUIGraph`, `DanceUIRuntime`, and `DanceUIDependencies` with:

```sh
cd ../DanceUIGraph
SKIP_POD_INSTALL=1 scripts/build-xcframework.sh
```

Before cutting `0.0.3`, verify the generated umbrella headers do not import UIKit or Cocoa:

```sh
rg -n '#import <(UIKit|Cocoa)/|UIKit/UIKit.h|Cocoa/Cocoa.h' \
  DanceUIGraphApp/build/archives \
  DanceUIGraphApp/build/xcframeworks \
  -g '*umbrella.h' \
  -g 'module.modulemap'
```

The command should produce no matches.
