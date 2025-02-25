import Foundation

// MARK: - Service Protocol

/// Defines the contract for any Anime Service.
protocol AnimeServiceProtocol {
    /// Fetches a list of animes with the given limit.
    /// - Parameter limit: The maximum number of animes to fetch.
    /// - Returns: An array of `Anime` objects.
    func fetchAnimeList(limit: Int) async throws -> [Anime]
}

// MARK: - Anime Service Implementation

/// A concrete implementation of `AnimeServiceProtocol` that uses URLSession.
final class AnimeService: AnimeServiceProtocol {
    private let clientID: String
    private let baseURL: URL

    /// Initializes the service with a given Client ID.
    /// - Parameter clientID: Your MyAnimeList Client ID.
    /// - Parameter baseURL: Base URL for the MyAnimeList anime endpoint. Defaults to "https://api.myanimelist.net/v2/anime".
    init(clientID: String, baseURL: URL = URL(string: "https://api.myanimelist.net/v2/anime")!) {
        self.clientID = clientID
        self.baseURL = baseURL
    }
    
    /// Fetches the anime list from the MyAnimeList API.
    /// - Parameter limit: Number of animes to fetch (default is 10).
    /// - Returns: An array of `Anime` objects.
    func fetchAnimeList(limit: Int = 10) async throws -> [Anime] {
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: false)
        components?.queryItems = [
            URLQueryItem(name: "limit", value: "\(limit)"),
            // Requesting specific fields to optimize the response.
            URLQueryItem(name: "fields", value: "id,title,main_picture")
        ]
        guard let url = components?.url else {
            throw URLError(.badURL)
        }
        
        // Create the request with the necessary header for authentication.
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue(clientID, forHTTPHeaderField: "X-MAL-CLIENT-ID")
        
        // Perform the network call.
        let (data, response) = try await URLSession.shared.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw URLError(.badServerResponse)
        }
        
        // Decode the JSON response into our models.
        let decoder = JSONDecoder()
        let animeListResponse = try decoder.decode(AnimeListResponse.self, from: data)
        let animeList = animeListResponse.data.map { $0.node }
        return animeList
    }
}
