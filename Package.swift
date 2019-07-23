// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "Timestamped",
  products: [
    .library(name: "Timestamped", targets: ["Timestamped"]),
  ],
  targets: [
    .target(name: "Timestamped", dependencies: []),
    .testTarget(name: "TimestampedTests", dependencies: ["Timestamped"]),
  ]
)
