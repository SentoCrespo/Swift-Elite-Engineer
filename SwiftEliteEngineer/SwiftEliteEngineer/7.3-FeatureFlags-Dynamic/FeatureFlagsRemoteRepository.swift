import Foundation

class FeatureFlagsRemoteRepository {
    
    // MARK: - Properties
    private let urlString: String
    
    // MARK: - Life Cycle
    init(urlString: String) {
        self.urlString = urlString
    }
    
}

// MARK: - Feature Flags Repository
extension FeatureFlagsRemoteRepository: FeatureFlagsRepository {
   
    func loadConfig() async throws -> FeatureFlags {
        guard let url = URL(string: urlString) else {
            throw FeatureFlagsRemoteRepositoryError.invalidUrl(
                url: urlString
            )
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return try JSONDecoder().decode(FeatureFlags.self, from: data)
        } catch {
            throw FeatureFlagsRemoteRepositoryError.decodingError(
                filename: urlString,
                error: error
            )
        }
    }
}

// MARK: - Errors
enum FeatureFlagsRemoteRepositoryError: Error {
    case invalidUrl(url: String)
    case decodingError(filename: String, error: Error)
}
