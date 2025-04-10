import Foundation
import SwiftUI

class CompositeAppDelegate: AppDelegateProtocol {
    
    // MARK: - Properties
    private let workers: [AppDelegateProtocol]
    
    // MARK: - Life Cycle
    init(workers: [AppDelegateProtocol]) {
        self.workers = workers
    }
    
}

// MARK: - App Delegate
extension CompositeAppDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let result = workers
            .allSatisfy {
                return $0.application?(
                    application,
                    didFinishLaunchingWithOptions: launchOptions
                ) ?? false
        }
        return result
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        workers.forEach {
            $0.applicationDidEnterBackground?(application)
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        workers.forEach {
            $0.applicationDidBecomeActive?(application)
        }
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        workers.forEach {
            $0.applicationWillTerminate?(application)
        }
    }
    
}

// MARK: - Methods
extension CompositeAppDelegate {
    
    func delegate<T: AppDelegateProtocol>(type: T.Type) -> T? {
        let result = workers
            .first(where: {
                return $0 is T
            })
            .flatMap {
                return $0 as? T
            }
        return result
    }
    
}
