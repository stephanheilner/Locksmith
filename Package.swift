import PackageDescription

let package = Package(
  name: "Locksmith",
  platforms: [
        .iOS(.v12),
    ]
  products: [.library(name: "Locksmith",targets: ["Locksmith"])],
  targets: [.target(name: "Locksmith",path: "Source")],
  swiftLanguageVersions: [.v4]
)
