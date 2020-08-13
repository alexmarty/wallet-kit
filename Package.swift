// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "wallet-kit",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "WalletKit", targets: ["WalletKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.0"),
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", .upToNextMajor(from: "0.9.0")),
        .package(url: "https://github.com/apple/swift-crypto.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "WalletKit",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "ZIPFoundation", package: "ZIPFoundation"),
                .product(name: "Crypto", package: "swift-crypto"),
        ]),
        .testTarget(
            name: "WalletKitTests",
            dependencies: [
                .target(name: "WalletKit")
        ]),
    ]
)
