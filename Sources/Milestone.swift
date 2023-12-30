import Foundation

struct Milestone: Codable {
    var url: URL?
    var htmlURL: URL?
    var labelsURL: URL?
    var id: Int
    var number: Int?
    var state: State?
    var title: String?
    var milestoneDescription: String?
    var creator: User?
    var openIssues: Int?
    var closedIssues: Int?
    var createdAt: Date?
    var updatedAt: Date?
    var closedAt: Date?
    var dueOn: Date?

    enum CodingKeys: String, CodingKey {
        case id
        case url
        case htmlURL = "html_url"
        case labelsURL = "labels_url"
        case number
        case state
        case title
        case milestoneDescription = "description"
        case creator
        case openIssues = "open_issues"
        case closedIssues = "closed_issues"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case closedAt = "closed_at"
        case dueOn = "due_on"
    }
}
