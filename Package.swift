// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// lz4-SwiftPM — LZ4 compression library for Swift Package Manager
//
import PackageDescription

let package = Package(
    name: "lz4",
    products: [
        .library(
            name: "lz4",
            targets: ["lz4"]),
    ],
    targets: [
        .target(
            name: "lz4",
            path: "lib",
            exclude: [
                "dll",
                "liblz4-dll.rc.in",
                "liblz4.pc.in",
                "Makefile",
                "README.md",
                "LICENSE",
            ],
            sources: [
                "lz4.c",
                "lz4file.c",
                "lz4frame.c",
                "lz4hc.c",
                "xxhash.c",
            ],
            publicHeadersPath: ".")
    ]
)
