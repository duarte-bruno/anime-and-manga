import Foundation

// MARK: - Service Protocol

protocol AnimeServiceProtocol {
    /// Fetches a list of animes with the given limit.
    /// - Parameter limit: The maximum number of animes to fetch.
    /// - Returns: An array of `Anime` objects.
    func fetchAnimeList(limit: Int) async throws -> [Anime]
}

// MARK: - Anime Service Implementation

final class AnimeService: AnimeServiceProtocol {
    
    // MARK: Initialization
    
    /// Initializes the service with a given app configuration
    /// - Parameter configuration: Your base app configuration
    init(configuration: AppConfigurationProtocol = AppConfiguration.shared) {
        self.configuration = configuration
    }
    
    // MARK: Properties
    
    private let configuration: AppConfigurationProtocol
    private let serviceURL = "anime"

    // MARK: Methods
    
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
