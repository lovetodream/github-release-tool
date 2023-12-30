import Foundation

struct User: Codable {
    var id: Int
    var login: String?
    var avatarURL: String?
    var gravatarID: String?
    var type: String?
    var name: String?
    var company: String?
    var blog: String?
    var location: String?
    var email: String?
    var numberOfPublicRepos: Int?
    var numberOfPublicGists: Int?
    var numberOfPrivateRepos: Int?
    var nodeID: String?
    var url: String?
    var htmlURL: String?
    var followersURL: String?
    var followingURL: String?
    var gistsURL: String?
    var starredURL: String?
    var subscriptionsURL: String?
    var reposURL: String?
    var eventsURL: String?
    var receivedEventsURL: String?
    var siteAdmin: Bool?
    var hireable: Bool?
    var bio: String?
    var twitterUsername: String?
    var numberOfFollowers: Int?
    var numberOfFollowing: Int?
    var createdAt: Date?
    var updatedAt: Date?
    var numberOfPrivateGists: Int?
    var numberOfOwnPrivateRepos: Int?
    var amountDiskUsage: Int?
    var numberOfCollaborators: Int?
    var twoFactorAuthenticationEnabled: Bool?
    var subscriptionPlan: Plan?

    enum CodingKeys: String, CodingKey {
        case id
        case login
        case avatarURL = "avatar_url"
        case gravatarID = "gravatar_id"
        case type
        case name
        case company
        case blog
        case location
        case email
        case numberOfPublicRepos = "public_repos"
        case numberOfPublicGists = "public_gists"
        case numberOfPrivateRepos = "total_private_repos"
        case nodeID = "node_id"
        case url
        case htmlURL = "html_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case starredURL = "starred_url"
        case subscriptionsURL = "subscriptions_url"
        case reposURL = "repos_url"
        case eventsURL = "events_url"
        case receivedEventsURL = "received_events_url"
        case siteAdmin = "site_admin"
        case hireable
        case bio
        case twitterUsername = "twitter_username"
        case numberOfFollowers = "followers"
        case numberOfFollowing = "following"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case numberOfPrivateGists = "private_gists"
        case numberOfOwnPrivateRepos = "owned_private_repos"
        case amountDiskUsage = "disk_usage"
        case numberOfCollaborators = "collaborators"
        case twoFactorAuthenticationEnabled = "two_factor_authentication"
        case subscriptionPlan = "plan"
    }
}
