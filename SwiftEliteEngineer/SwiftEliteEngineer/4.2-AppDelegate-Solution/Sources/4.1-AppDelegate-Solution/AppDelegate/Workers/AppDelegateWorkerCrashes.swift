import Foundation
import SwiftUI

class AppDelegateWorkerCrashes: AppDelegateProtocol {
    
    // MARK: App Lifecycle
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        CrashHandler.setup()
        return true
    }

}

enum CrashHandler {
    static func setup() {
        // Implementation here
    }
}
