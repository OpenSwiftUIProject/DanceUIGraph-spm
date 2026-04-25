# DanceUIGraph SwiftPM Binary Package

This package vends prebuilt `DanceUIGraph` and `DanceUIRuntime` XCFrameworks for iOS 13 and iOS Simulator.

Repository: `OpenSwiftUIProject/DanceUIGraph-spm`

## Artifacts

- `DanceUIGraph.xcframework.zip`
  - Checksum: `c5975153aa148394ead0182a7286c76877b2edca1ad587ac5c815420437de0e3`
- `DanceUIRuntime.xcframework.zip`
  - Checksum: `020f4853a71344d8b2f3b028fd7ed6eeaf99c1dcd11e42f53eed1593ef8fba42`

The artifacts are built from sibling checkouts of `DanceUIGraph`, `DanceUIRuntime`, and `DanceUIDependencies` with:

```sh
cd ../DanceUIGraph
SKIP_POD_INSTALL=1 scripts/build-xcframework.sh
```
