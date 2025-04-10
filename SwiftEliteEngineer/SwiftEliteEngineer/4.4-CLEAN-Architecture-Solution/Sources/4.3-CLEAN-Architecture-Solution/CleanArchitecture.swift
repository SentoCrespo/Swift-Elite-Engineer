import Foundation
import SwiftUI
import DomainLayer
import DataLayer
import PresentationLayer

@main
struct WeatherApp: App {
    
    // MARK: - Properties
    let repositoryMock: WeatherRepository = WeatherRepositoryMock(
        response: .success(Weather(temperature: 23))
    )
    let repositoryApi: WeatherRepository = WeatherRepositoryApi()
                        
    // MARK: - Scene
    var body: some Scene {
        WindowGroup {
            WeatherView(repository: repositoryMock)
        }
    }
    
}
