import Foundation

@MainActor
public class GetWeatherUseCase {
    
    // MARK: - Properties
    private let repository: WeatherRepository
    
    // MARK: - Life Cycle
    public init(repository: WeatherRepository) {
        self.repository = repository
    }
    
    // MARK: - Methods
    public func execute() async throws -> Weather {
        return try await repository.fetchWeather()
    }
    
}
