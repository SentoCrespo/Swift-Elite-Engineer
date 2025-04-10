import Foundation
import SwiftUI
import DomainLayer

@MainActor
public struct WeatherView: View {
    
    // MARK: - Properties
    @State private var temperature: String = "Loading..."
    private var getWeatherUseCase: GetWeatherUseCase

    // MARK: - Life Cycle
    public init(repository: WeatherRepository) {
        self.getWeatherUseCase = GetWeatherUseCase(repository: repository)
    }

    // MARK: - View
    public var body: some View {
        VStack {
            Text("Current temperature")
            Text(temperature)
                .font(.largeTitle)
                .bold()
        }
        .task {
            await loadWeather()
        }
    }

}

// MARK: - Private Methods
private extension WeatherView {
    
    func loadWeather() async {
        do {
            let weather = try await getWeatherUseCase.execute()
            temperature = "\(weather.temperature)°C"
        } catch {
            temperature = "Error fetching data"
        }
    }
    
}
