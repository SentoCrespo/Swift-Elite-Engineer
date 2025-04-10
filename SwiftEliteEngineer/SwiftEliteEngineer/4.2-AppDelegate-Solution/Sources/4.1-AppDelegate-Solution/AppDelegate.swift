import Foundation
import SwiftUI

// MARK: - ✅ ELITE implementation

@main
class AppDelegate: AppDelegateProtocol {
    
    // MARK: - Properties
    let appDelegateMediator = AppDelegateFactory.makeDefault()
    
    // MARK: App Lifecycle
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let result = appDelegateMediator.application?(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
        return result ?? false
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        appDelegateMediator.applicationDidEnterBackground?(application)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        appDelegateMediator.applicationDidBecomeActive?(application)
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        appDelegateMediator.applicationWillTerminate?(application)
    }
}
