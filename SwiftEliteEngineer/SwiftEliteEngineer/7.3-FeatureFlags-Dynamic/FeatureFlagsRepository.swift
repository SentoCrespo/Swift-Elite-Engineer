import Foundation

protocol FeatureFlagsRepository {
    func loadConfig() async throws -> FeatureFlags
}
