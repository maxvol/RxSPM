// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxSPM",
    platforms: [
        .macOS(.v10_10), .iOS(.v8), // .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Rx", targets: ["Rx"]),
        .library(name: "RxTesting", targets: ["RxTesting"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
          name: "Rx",
          dependencies: [
              .product(name: "RxSwift", package: "RxSwift"),
              .product(name: "RxCocoa", package: "RxSwift"),
              .product(name: "RxRelay", package: "RxSwift")
          ]
        ),
        .target(
          name: "RxTesting",
          dependencies: [
              .product(name: "RxTest", package: "RxSwift"),
              .product(name: "RxBlocking", package: "RxSwift")
          ]
        )
    ]
)
