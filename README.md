# DanceUIGraph SwiftPM Binary Package

This package vends prebuilt `DanceUIGraph` and `DanceUIRuntime` XCFrameworks for iOS and iOS Simulator.

Repository: `OpenSwiftUIProject/DanceUIGraph-spm`

## Artifacts

- `DanceUIGraph.xcframework.zip`
  - Checksum: `cef6150cc4fcf7cf988424599f4593fb07f3b2680066df1c61795e5bed92e163`
- `DanceUIRuntime.xcframework.zip`
  - Checksum: `b60bdd1d8b9d204aa73e40e7c2621d4d761d393c422e4fa41a5b40056c312f4c`

The artifacts are built from sibling checkouts of `DanceUIGraph`, `DanceUIRuntime`, and `DanceUIDependencies` with:

```sh
cd ../DanceUIGraph
SKIP_POD_INSTALL=1 scripts/build-xcframework.sh
```
