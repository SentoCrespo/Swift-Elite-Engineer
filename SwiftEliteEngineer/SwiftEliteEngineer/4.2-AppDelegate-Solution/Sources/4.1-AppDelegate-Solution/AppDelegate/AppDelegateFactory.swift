import Foundation

class AppDelegateFactory {
    
    @MainActor
    static func makeDefault() -> AppDelegateProtocol {
        return CompositeAppDelegate(
            workers: [
                AppDelegateWorkerAnalytics(),
                AppDelegateWorkerCrashes(),
                AppDelegateWorkerNetworkMonitor(),
                AppDelegateWorkerUserTracking()
            ]
        )
    }
    
}
