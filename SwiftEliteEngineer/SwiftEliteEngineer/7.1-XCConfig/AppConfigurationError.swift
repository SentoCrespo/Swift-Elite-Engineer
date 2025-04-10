import Foundation

// MARK: - Errors
public enum AppConfigurationError: Error {
    case fileNotFound(filename: String)
    case decodingError(filename: String, error: Error)
}
