import Foundation

class FeatureFlagsLocalRepository {
    
    // MARK: - Life Cycle
    init() {}
    
}

// MARK: - Feature Flags Repository
extension FeatureFlagsLocalRepository: FeatureFlagsRepository {
    
    func loadConfig() async throws -> FeatureFlags {
        guard let url = Bundle.main.url(
            forResource: configFilename,
            withExtension: "json"
        ) else {
            throw FeatureFlagsLocalRepositoryError.fileNotFound(
                filename: configFilename
            )
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(FeatureFlags.self, from: data)
        } catch {
            throw FeatureFlagsLocalRepositoryError.decodingError(
                filename: configFilename,
                error: error
            )
        }
    }
}

// MARK: - Private Methods
private extension FeatureFlagsLocalRepository {
    
    private var configFilename: String {
        #if DEBUG
            return "features-debug"
        #elseif BETA
            return "features-beta"
        #elseif RELEASE
            return "features-release"
        #endif
    }
    
}

// MARK: - Errors
enum FeatureFlagsLocalRepositoryError: Error {
    case fileNotFound(filename: String)
    case decodingError(filename: String, error: Error)
}
