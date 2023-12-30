import Foundation

struct Repository: Codable {
    var id: Int
    var owner: User
    var name: String?
    var fullName: String?
    var isPrivate: Bool
    var repositoryDescription: String?
    var isFork: Bool
    var gitURL: String?
    var sshURL: String?
    var cloneURL: String?
    var htmlURL: String?
    var size: Int?
    var lastPush: Date?
    var stargazersCount: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case owner
        case name
        case fullName = "full_name"
        case isPrivate = "private"
        case repositoryDescription = "description"
        case isFork = "fork"
        case gitURL = "git_url"
        case sshURL = "ssh_url"
        case cloneURL = "clone_url"
        case htmlURL = "html_url"
        case size
        case lastPush = "pushed_at"
        case stargazersCount = "stargazers_count"
    }
}
