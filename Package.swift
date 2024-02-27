// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlagPhoneNumber",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FlagPhoneNumber",
            targets: ["FlagPhoneNumber"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "FlagPhoneNumber",
            url: "https://github.com/andriiicat/FlagPhoneNumber/raw/master/build/FlagPhoneNumber.xcframework.zip",
            checksum: "9a5596f109cfda2ec28591ad52ff5d56a72f605057d1d658bd11e251071c1a83"
        ),
    ]
)
