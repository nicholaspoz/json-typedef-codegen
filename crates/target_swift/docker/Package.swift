// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "jtd_e2e_test",
    targets: [
        .target(
            name: "jtd_e2e_test",
            dependencies: [],
            path: "Sources"
        ),
    ]
)