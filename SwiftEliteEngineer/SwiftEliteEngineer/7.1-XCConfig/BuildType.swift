import Foundation

public struct BuildType {

    /// Returns if the build is `debug` depending on compiler flags
    static var isDebugBuild: Bool {
        guard !isTestingBuild else {
            return false
        }
        #if DEBUG
            return true
        #else
            return false
        #endif
    }

    /// Returns if the build is `release` depending on compiler flags
    /// It also checks it's not a `test` build
    static var isReleaseBuild: Bool {
        guard !isTestingBuild else {
            return false
        }
        guard !isBetaBuild else {
            return false
        }
        guard !isDebugBuild else {
            return false
        }
        return true
    }

    /// Returns if the build is `beta` depending on compiler flags
    /// It also checks it's not a `test` build
    static var isBetaBuild: Bool {
        guard !isTestingBuild else {
            return false
        }
        #if BETA
            return true
        #else
            return false
        #endif
    }

    /// Returns if the build is `test` depending on the process info
    static var isTestingBuild: Bool {
        if ProcessInfo.processInfo.processName == "xctest" {
            return true
        }
        if let environment = ProcessInfo.processInfo.environment["XCInjectBundle"], !environment.isEmpty {
            return true
        }
        return NSClassFromString("XCTest") != nil
    }
}
