// swift-tools-version:6.0

import PackageDescription

let package = Package(
  name: "saga-app-template",
  platforms: [
    .macOS(.v14),
  ],
  dependencies: [
    .package(url: "https://github.com/loopwerk/Saga", from: "3.0.0"),
    .package(url: "https://github.com/loopwerk/SagaParsleyMarkdownReader", from: "1.0.0"),
    .package(url: "https://github.com/loopwerk/SagaSwimRenderer", from: "1.0.0"),
    .package(url: "https://github.com/loopwerk/Parsley", from: "1.2.0"),
    .package(url: "https://github.com/loopwerk/Bonsai", from: "1.0.0"),
    .package(url: "https://github.com/loopwerk/SwiftTailwind", from: "1.0.0"),
  ],
  targets: [
    .executableTarget(
      name: "saga-app-template",
      dependencies: [
        "Saga",
        "SagaParsleyMarkdownReader",
        "SagaSwimRenderer",
        "Parsley",
        "Bonsai",
        "SwiftTailwind",
      ]
    ),
  ]
)