import Foundation

struct FeatureFlags: Decodable {
    let features: Features
}
struct Features: Decodable {
    let profile: FeatureProfile
}
struct FeatureProfile: Decodable {
    let isEnabled: Bool
}
