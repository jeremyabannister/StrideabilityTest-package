// swift-tools-version: 5.10

///
import PackageDescription


///
let package = Package(
    name: "StrideabilityTest-package",
    products: [
        .library(
            name: "StrideabilityTest-module",
            targets: ["StrideabilityTest-module"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit",
            "0.8.0" ..< "0.9.0"
        )
    ],
    targets: [
        
        ///
        .target(
            name: "StrideabilityTest-module",
            dependencies: [
                
                ///
                .product(
                    name: "FoundationTestToolkit",
                    package: "FoundationToolkit"
                )
            ]
        ),
        
        ///
        .testTarget(
            name: "StrideabilityTest-module-tests",
            dependencies: ["StrideabilityTest-module"]
        ),
    ]
)
