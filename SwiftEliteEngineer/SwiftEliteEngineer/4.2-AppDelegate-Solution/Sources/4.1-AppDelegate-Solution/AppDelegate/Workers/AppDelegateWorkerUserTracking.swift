import Foundation
import SwiftUI

class AppDelegateWorkerUserTracking: AppDelegateProtocol {
    
    // MARK: - App Lifecycle
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        UserTracking.saveSessionData()
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        UserTracking.loadSessionData()
    }

}

enum UserTracking {
    static func saveSessionData() {
        // Implementation here
    }
    static func loadSessionData() {
        // Implementation here
    }
}
