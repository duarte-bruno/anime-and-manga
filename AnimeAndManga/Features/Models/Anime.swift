import Foundation

// MARK: - Models

/// Represents an Anime entity.
struct Anime: Codable, Identifiable {
    let id: Int
    let title: String
    let main_picture: AnimeImage?
}

/// Represents the main image of an anime.
struct AnimeImage: Codable {
    let large: String?
    let medium: String?
}

/// The top-level response from the Anime Listing API.
struct AnimeListResponse: Codable {
    let data: [AnimeData]
}

/// Wraps the anime node returned by the API.
struct AnimeData: Codable {
    let node: Anime
}
