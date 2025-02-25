import Foundation

protocol AppConfigProtocol {
    var clientID: String { get }
    var host: String { get }
}

final class AppConfig: AppConfigProtocol {
    static let shared = AppConfig()
    
    private let config: [String: Any]
    
    // Private initializer to enforce the singleton pattern.
    private init() {
        // Load the Configuration.plist from the main bundle.
        guard let url = Bundle.main.url(forResource: "Configuration", withExtension: "plist"),
              let data = try? Data(contentsOf: url),
              let configDictionary = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [String: Any]
        else {
            fatalError("Unable to load Configuration.plist")
        }
        self.config = configDictionary
    }
    
    // Accessor for the MyAnimeList Client ID.
    var clientID: String {
        guard let id = config["MYANIMELIST_CLIENT_ID"] as? String else {
            fatalError("MYANIMELIST_CLIENT_ID not set in Config.plist")
        }
        return id
    }
    
    // Accessor for the host (e.g., API base URL).
    var host: String {
        guard let host = config["MYANIMELIST_API_HOST"] as? String else {
            fatalError("MYANIMELIST_API_HOST not set in Config.plist")
        }
        return host
    }
}
