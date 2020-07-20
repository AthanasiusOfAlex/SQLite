// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "SQLite",
    products: [
        .library(
            name: "SQLite",
            targets: ["SQLite"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AthanasiusOfAlex/SQLiteObjc.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "SQLite",
            dependencies: ["SQLiteObjc"]),
        .testTarget(
            name: "SQLiteTests",
            dependencies: ["SQLite"])
    ]
)