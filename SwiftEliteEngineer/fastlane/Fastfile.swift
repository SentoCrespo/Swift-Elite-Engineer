// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
    
    func debugLane() {
        desc("Prints contents from Fastfile")
        let values: [String: String] = [
            "App Identifier": App.identifier,
            "Apple Id": Account.appleID,
            "Team Id": Account.itunesConnectID,
            "ITC Id": Account.teamID,
            "ITC Team Id": Account.itcTeamId,
            "Repository URL": Repository.url,
            "Repository Branch": Repository.branch
        ]
        let message: String = values
            .map { "\($0.key): \($0.value)" }
            .joined(separator: "\n")
        println(message: "\(message)")
    }
    
    func matchDevelopmentLane() {
        desc("Creates or updates certificates and provisioning profiles for development")
        match(
            type: "development",
            readonly: false,
            generateAppleCerts: true,
            skipProvisioningProfiles: false,
            appIdentifier: [App.identifier],
            username: .userDefined(Account.appleID),
            teamId: .userDefined(Account.teamID),
            storageMode: "git",
            gitUrl: Repository.url,
            gitBranch: Repository.branch,
            gitFullName: "Fastlane",
            gitUserEmail: "Fastlane@automated.com",
            force: false,
            platform: "ios"
        )
    }
    
}
