import Foundation

// MARK: - Models

struct Anime: Codable, Identifiable {
    let id: Int
    let title: String
    let mainPicture: AnimeImage?
    let score: Double
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case mainPicture = "main_picture"
        case score = "mean"
    }
}

struct AnimeImage: Codable {
    let large: String?
    let medium: String?
}

struct AnimeRanking: Codable {
    let rank: Int
}

// MARK: - Response Models

/// The top-level response from the Anime Listing API.
struct AnimeListResponse: Codable {
    let data: [AnimeData]
}

/// Wraps the anime node returned by the API.
struct AnimeData: Codable {
    let node: Anime
    let ranking: AnimeRanking
}
