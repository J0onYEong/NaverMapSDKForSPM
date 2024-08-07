// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Junios.NMapSDKForSPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Junios.NMapSDKForSPM",
            targets: ["Junios.NMapSDKForSPM"]),
    ],
    targets: [
        .target(
            name: "Junios.NMapSDKForSPM",
            dependencies: ["NMapsMap", "NMapsGeometry"]
        ),
        
        // Pod로 다운로드한 XCFrameworks
        .binaryTarget(
            name: "NMapsMap",
            path: "./Frameworks/NMapsMap.xcframework"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            path: "./Frameworks/NMapsGeometry.xcframework"
        ),
    ]
)
