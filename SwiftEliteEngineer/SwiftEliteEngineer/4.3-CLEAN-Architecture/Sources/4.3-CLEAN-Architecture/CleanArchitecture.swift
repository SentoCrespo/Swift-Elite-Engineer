import Foundation
import SwiftUI

// MARK: - ❌ BAD implementation

@main
struct WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            WeatherView()
        }
    }
}

struct WeatherView: View {
    
    // MARK: - Properties
    @State private var temperature: String = "Loading..."
    
    // MARK: - View
    var body: some View {
        VStack {
            Text("Current temperature")
                .font(.title)
            Text(temperature)
                .font(.largeTitle)
                .bold()
        }
        .onAppear {
            fetchWeather()
        }
    }
    
}

// MARK: - Private Methods
private extension WeatherView {
    
    func fetchWeather() {
        let urlString = "https://api.weather.com/Valencia"
        guard let url = URL(string: urlString) else { return }
        
        Task {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                temperature = "\(weather.temp_c)°C"
            } catch {
                temperature = "Error fetching data"
            }
        }
    }
    
}

private struct Weather: Codable {
    let temp_c: Double
}
