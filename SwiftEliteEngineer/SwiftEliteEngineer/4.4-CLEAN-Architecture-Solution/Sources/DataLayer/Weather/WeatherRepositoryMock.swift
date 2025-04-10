import Foundation
import DomainLayer

public class WeatherRepositoryMock: WeatherRepository {
    
    // MARK: - Properties
    private var methodCalled: Int
    private let response: Result<Weather, Error>
    
    // MARK: - Life Cycle
    public init(response: Result<Weather, Error>) {
        self.methodCalled = 0
        self.response = response
    }
    
    // MARK: - WeatherRepository
    public func fetchWeather() async throws -> Weather {
        // Increment method call
        methodCalled += 1
        // Return mocked response
        switch response {
        case .success(let weather):
            return weather
        case .failure(let error):
            throw error
        }
    }
    
}
