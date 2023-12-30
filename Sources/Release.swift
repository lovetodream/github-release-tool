import Foundation

struct Release: Codable {
    var id: Int
    var url: URL
    var htmlURL: URL
    var assetsURL: URL
    var tarballURL: URL?
    var zipballURL: URL?
    var nodeId: String
    var tagName: String
    var commitish: String
    var name: String
    var body: String
    var draft: Bool
    var prerelease: Bool
    var createdAt: Date
    var publishedAt: Date?
    var author: User

    enum CodingKeys: String, CodingKey {
        case id
        case url
        case htmlURL = "html_url"
        case assetsURL = "assets_url"
        case tarballURL = "tarball_url"
        case zipballURL = "zipball_url"
        case nodeId = "node_id"
        case tagName = "tag_name"
        case commitish = "target_commitish"
        case name
        case body
        case draft
        case prerelease
        case createdAt = "created_at"
        case publishedAt = "published_at"
        case author
    }
}
