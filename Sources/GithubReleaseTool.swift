import Foundation
import ArgumentParser

@main
struct GithubReleaseTool: AsyncParsableCommand {
    @Option(help: "Your GitHub access token, used to authenticate against the GitHub REST API.")
    var token: String

    @Option(name: .customLong("repo"), help: "The repository (user/repo), the release notes will be generated for.")
    var repository: String

    static let decoder = {
        var decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()

    var baseURL: URL { URL(string: "https://api.github.com/repos/\(self.repository)")! }

    mutating func run() async throws {
        let previousRelease = try await self.lastRelease()
        print(previousRelease?.tagName)
        print(previousRelease?.createdAt)

        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://api.github.com/repos/apple/swift-nio/pulls?state=closed")!)
        let prs = try Self.decoder.decode([PullRequest].self, from: data)
    }

    func lastRelease() async throws -> Release? {
        let (data, _) = try await URLSession.shared.data(from: self.baseURL
            .appending(path: "releases")
            .appending(queryItems: [URLQueryItem(name: "per_page", value: "1")])
        )
        return try Self.decoder.decode([Release].self, from: data).first
    }
}
