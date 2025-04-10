import Foundation

class LoadConfigUseCase {
    
    // MARK: - Properties
    private let repository: FeatureFlagsRepository
    
    // MARK: - Life Cycle
    init(repository: FeatureFlagsRepository) {
        self.repository = repository
    }
    
    // MARK: - Methods
    func execute() async throws -> FeatureFlags {
        return try await repository.loadConfig()
    }
    
}
