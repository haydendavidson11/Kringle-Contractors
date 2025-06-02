import ProjectDescription

let project = Project(
    name: "Kringle-Contractors",
    targets: [
        .target(
            name: "Kringle-Contractors",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Kringle-Contractors",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Kringle-Contractors/Sources/**"],
            resources: ["Kringle-Contractors/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "Kringle-ContractorsTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.Kringle-ContractorsTests",
            infoPlist: .default,
            sources: ["Kringle-Contractors/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Kringle-Contractors")]
        ),
    ]
)
