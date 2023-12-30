import Foundation

struct PullRequest: Codable {
    private(set) var id: Int
    var url: URL?

    var htmlURL: URL?
    var diffURL: URL?
    var patchURL: URL?
    var issueURL: URL?
    var commitsURL: URL?
    var reviewCommentsURL: URL?
    var reviewCommentURL: URL?
    var commentsURL: URL?
    var statusesURL: URL?

    var title: String?
    var body: String?

    var assignee: User?
    var milestone: Milestone?

    var locked: Bool?
    var createdAt: Date?
    var updatedAt: Date?
    var closedAt: Date?
    var mergedAt: Date?

    var user: User?
    var number: Int
    var state: State?
    var labels: [Label]?

    var head: PullRequest.Branch?
    var base: PullRequest.Branch?

    var requestedReviewers: [User]?
    var draft: Bool?

    enum CodingKeys: String, CodingKey {
        case id
        case url
        case diffURL = "diff_url"
        case patchURL = "patch_url"
        case issueURL = "issue_url"
        case commitsURL = "commits_url"
        case reviewCommentsURL = "review_comments_url"
        case commentsURL = "comments_url"
        case statusesURL = "statuses_url"
        case htmlURL = "html_url"
        case number
        case state
        case title
        case body
        case assignee
        case milestone
        case locked
        case user
        case labels
        case closedAt = "closed_at"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case mergedAt = "merged_at"
        case head
        case base
        case requestedReviewers = "requested_reviewers"
        case draft
    }

    struct Branch: Codable {
        var label: String?
        var ref: String?
        var sha: String?
        var user: User?
        var repo: Repository?
    }
}
