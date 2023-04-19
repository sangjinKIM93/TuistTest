import ProjectDescription

private let bundleId: String = "com.sangjin.tuisttest"
private let version: String = "0.0.1"
private let bundleVersion: String = "1"
private let iOSTargetVersion: String = "16.0"

private let basePath: String = "Targets/TuistTest2"
private let swiftPackagePath: String = "SwiftPackages"
private let appName: String = "TuistTest2"

let project = Project(name: appName,
                      packages: [
                        .package(path: "\(swiftPackagePath)/Onboarding"),
                        .package(path: "\(swiftPackagePath)/UIComponents"),
                      ],
                      settings: Settings.settings(configurations: makeConfigurations()),
                      targets: [
                        Target(
                            name: "iOS",
                            platform: .iOS,
                            product: .app,
                            bundleId: bundleId,
                            deploymentTarget: .iOS(targetVersion: iOSTargetVersion, devices: .iphone),
                            infoPlist: makeInfoPlist(),
                            sources: ["\(basePath)/Sources/**"],
                            resources: ["\(basePath)/Resources/**"],
                            dependencies: [
                                .package(product: "Onboarding"),
                                .package(product: "UIComponents"),
                            ],
                            settings: baseSettings()
                        )
                      ],
                      additionalFiles: [
                        "README.md"
                      ])

private func makeInfoPlist(merging other: [String: InfoPlist.Value] = [:]) -> InfoPlist {
    var extendedPlist: [String: InfoPlist.Value] = [
        "UIApplicationSceneManifest": ["UIAppliactionSupportsMultipleScenes": true],
        "UILaunchScreen": [],
        "UISupportedInterfaceOrientations":
            [
                "UIInterfaceOrientationPortrait",
            ],
        "CFBundleShortVersionString": "\(version)",
        "CFBundleVersion": "\(bundleVersion)",
        "CFBundleDisplayName": "$(APP_DISPLAY_NAME)",
    ]
    
    other.forEach { (key: String, value: InfoPlist.Value) in
        extendedPlist[key] = value
    }
    
    return InfoPlist.extendingDefault(with: extendedPlist)
}

private func makeConfigurations() -> [Configuration] {
    let debug = Configuration.debug(name: "Debug", xcconfig: "Configs/Debug.xcconfig")
    let release = Configuration.debug(name: "Release", xcconfig: "Configs/Release.xcconfig")
    
    return [debug, release]
}

private func baseSettings() -> Settings {
    var settings = SettingsDictionary()
    
    return Settings.settings(base: settings,
                             configurations: [],
                             defaultSettings: .recommended)
}
