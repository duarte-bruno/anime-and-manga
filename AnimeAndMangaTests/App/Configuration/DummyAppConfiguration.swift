import XCTest
@testable import AnimeAndManga

// MARK: - Dummy App Configuration

final class DummyAppConfiguration: AppConfigurationProtocol {
    var host: String = "https://test.com/"
    var clientID: String = "dummyID"
    var clientIDKey: String = "dummyKey"
    
    // If necessary, implement the 'shared' property
    static var shared: AppConfigurationProtocol = DummyAppConfiguration()
}
