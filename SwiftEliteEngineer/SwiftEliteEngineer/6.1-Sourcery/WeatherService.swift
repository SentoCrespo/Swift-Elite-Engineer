import Foundation

/// Defines the public interface
public protocol WeatherService: AutoMockable {
    func getWeatherData() -> String
}

// sourcery:AutoInit
public class WeatherServiceReal {
    
    // MARK: - Properties
    public var city: String
    public var unit: String
    
    // sourcery:inline:auto:WeatherServiceReal.AutoInit
        // MARK: - Life Cycle
        public init(
            city: String,
            unit: String
            ) {
    		self.city = city
    		self.unit = unit
    	}
    // sourcery:end
}

// MARK: - WeatherService
extension WeatherServiceReal: WeatherService {
    
    public func getWeatherData() -> String {
        return "The temperature in \(city) is 23°\(unit)."
    }
    
}
