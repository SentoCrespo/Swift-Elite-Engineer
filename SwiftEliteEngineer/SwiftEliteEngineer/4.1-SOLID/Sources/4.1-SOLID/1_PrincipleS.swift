import Foundation

// MARK: - ❌ BAD implementation
class UserManager {

    func printAndSaveUser(name: String) {
        print("User name is: \(name)")
        saveUserLocally(name: name)
    }
    
    private func saveUserLocally(name: String) {
        // Save user locally
    }

}

// MARK: - ✅ ELITE implementation
class UserSaver {
    
    func save(name: String) {
        // Save user locally
    }
    
}

class UserLogger {

    func log(name: String) {
        print("User name is: \(name)")
    }

}
