// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyMatrix",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftyMatrix",
            targets: ["SwiftyMatrix"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/koher/SwiftyVector.git", from: "0.3.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftyMatrix",
            dependencies: ["SwiftyVector"]),
        .testTarget(
            name: "SwiftyMatrixTests",
            dependencies: ["SwiftyMatrix", "SwiftyVector"]),
    ]
)
