import Foundation

// MARK: - ❌ BAD implementation
class FileLoggerBad {
    func log(message: String) {
        print("Logging: \(message)")
    }
}

class ManagerBad {
    let logger = FileLoggerBad()
    
    func saveUser(name: String) {
        logger.log(message: "User saved: \(name)")
    }
}

// MARK: - ✅ ELITE implementation
protocol Logger {
    func log(message: String)
}

class FileLogger: Logger {
    func log(message: String) {
        print("Logging: \(message)")
    }
}

class Manager {
    let logger: Logger
    
    init(logger: Logger) {
        self.logger = logger
    }
    
    func saveUser(name: String) {
        logger.log(message: "User saved: \(name)")
    }
}
