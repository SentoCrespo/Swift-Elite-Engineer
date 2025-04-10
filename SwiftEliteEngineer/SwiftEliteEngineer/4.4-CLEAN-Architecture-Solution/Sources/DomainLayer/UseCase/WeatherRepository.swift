import Foundation

@MainActor
public protocol WeatherRepository {
    func fetchWeather() async throws -> Weather
}
