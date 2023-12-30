import Foundation

/// The plan of a GitHub user.
///
/// GitHub Apps with the `Plan` user permission can retrieve information about a user's GitHub plan.
/// The GitHub App must be authenticated as a user.
struct Plan: Codable {
    var name: String?
    var space: Int?
    var numberOfCollaborators: Int?
    var numberOfPrivateRepos: Int?

    enum CodingKeys: String, CodingKey {
        case name
        case space
        case numberOfCollaborators = "collaborators"
        case numberOfPrivateRepos = "private_repos"
    }
}
