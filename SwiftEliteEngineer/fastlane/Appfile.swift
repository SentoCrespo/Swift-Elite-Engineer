struct App {
    // The bundle identifier of your app
    static var identifier: String { return "com.sento.swiftEliteEngineer" }
}

struct Account {
    // Your Apple Developer Portal username
    static var appleID: String { return "myAppleId@apple.com" }

    // Developer Portal Team ID
    static var teamID: String {return "Q2CBPJ58CA" }

    // App Store Connect Account
    static var itunesConnectID: String {return "tunes@company.com" }

    // App Store Connect Team ID
    static var itcTeamId: String {return "18742801" }
}

struct Repository {
    // Repository URL for certificates & Provisioning Profiles
    static var url: String { return "https://github.com/myRepository" }
    // Repository branch for certificates & Provisioning Profiles
    static var branch: String { return "main" }
}

// For more information about the Appfile, see:
// https://docs.fastlane.tools/advanced/#appfile
