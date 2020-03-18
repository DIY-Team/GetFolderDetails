// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GetFolderDetails",
    dependencies: [
    .package(url: "https://github.com/JohnSundell/Files", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "GetFolderDetails",
            dependencies: ["GetFolderDetailsCore"]),
        .target(
            name: "GetFolderDetailsCore",
            dependencies: ["Files"]),
    ]
)
