import Foundation
import DomainLayer

public class WeatherRepositoryApi: WeatherRepository {
    
    // MARK: - Life Cycle
    public init() {}
    
    // MARK: - WeatherRepository
    public func fetchWeather() async throws -> Weather {
        let urlString = "https://api.weather.com/Valencia"
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let decodedResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
        return Weather(temperature: decodedResponse.temp_c)
    }
    
}

// MARK: - DTOs
private struct WeatherResponse: Codable {
    let temp_c: Double
}
