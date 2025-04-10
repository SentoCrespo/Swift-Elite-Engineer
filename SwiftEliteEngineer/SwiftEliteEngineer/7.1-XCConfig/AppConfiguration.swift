import Foundation

// MARK: - Public Methods
public struct AppConfiguration {
    
    static func loadConfig() throws -> FeatureFlags {
        let configFilename = configFilename
        guard let url = Bundle.main.url(forResource: configFilename, withExtension: "json") else {
            throw AppConfigurationError.fileNotFound(filename: configFilename)
        }
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(FeatureFlags.self, from: data)
        } catch {
            throw AppConfigurationError.decodingError(filename: configFilename, error: error)
        }
    }
}

// MARK: - Private Methods
private extension AppConfiguration {
    static var configFilename: String {
        #if DEBUG
        return "features-debug"
        #elseif BETA
        return "features-beta"
        #elseif RELEASE
        return "features-release"
        #endif
    }
}
