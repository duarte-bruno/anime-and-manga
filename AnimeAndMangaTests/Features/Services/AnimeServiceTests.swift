import XCTest
@testable import AnimeAndManga

// MARK: - AnimeService Tests

final class AnimeServiceTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Register the URLProtocolStub to intercept all URLSession calls
        URLProtocol.registerClass(URLProtocolStub.self)
    }
    
    override func tearDown() {
        super.tearDown()
        // Clear the stub values
        URLProtocolStub.testData = nil
        URLProtocolStub.response = nil
        URLProtocolStub.error = nil
        URLProtocol.unregisterClass(URLProtocolStub.self)
    }
    
    func testFetchAnimeList_WithValidResponse_ReturnsAnimeList() async throws {
        
        URLProtocolStub.testData = AnimeServiceResponseMock.fetchAnimeListSuccessResponse.data(using: .utf8)
        URLProtocolStub.response = HTTPURLResponse(url: URL(string: "https://test.com/anime/ranking")!,
                                                   statusCode: 200,
                                                   httpVersion: nil,
                                                   headerFields: nil)
        URLProtocolStub.error = nil
        
        // Create a dummy configuration for testing
        let dummyConfig = DummyAppConfiguration()
        dummyConfig.host = "https://test.com/"
        dummyConfig.clientID = "dummyID"
        dummyConfig.clientIDKey = "dummyKey"
        
        let service = AnimeService(configuration: dummyConfig)
        
        // Act
        let animeList = try await service.fetchAnimeList(limit: 1)
        
        // Assert
        XCTAssertEqual(animeList.count, 1)
        XCTAssertEqual(animeList.first?.title, "Naruto")
    }
    
    /// Tests that when the URL is invalid, the function throws a URLError.badURL error.
    func testFetchAnimeList_WithInvalidURL_ThrowsBadURL() async {
        // Arrange: Create a dummy configuration with an invalid host
        let dummyConfig = DummyAppConfiguration()
        dummyConfig.host = "invalid_url" // Generates an invalid URL
        dummyConfig.clientID = "dummyID"
        dummyConfig.clientIDKey = "dummyKey"
        
        let service = AnimeService(configuration: dummyConfig)
        
        // Act & Assert
        await XCTAssertThrowsError(try await service.fetchAnimeList(limit: 1)) { error in
            let urlError = error as? URLError
            XCTAssertEqual(urlError?.code, URLError.badURL)
        }
    }
    
    /// Tests that when the HTTP response is not in the 200-299 range, the function throws a URLError.badServerResponse error.
    func testFetchAnimeList_WithHTTPError_ThrowsBadServerResponse() async {
        // Arrange: Define an HTTP response with a 500 status code
        let jsonString = "{}" // Content is not relevant here
        URLProtocolStub.testData = jsonString.data(using: .utf8)
        URLProtocolStub.response = HTTPURLResponse(url: URL(string: "https://test.com/anime/ranking")!,
                                                   statusCode: 500,
                                                   httpVersion: nil,
                                                   headerFields: nil)
        URLProtocolStub.error = nil
        
        // Create a dummy configuration for testing
        let dummyConfig = DummyAppConfiguration()
        dummyConfig.host = "https://test.com/"
        dummyConfig.clientID = "dummyID"
        dummyConfig.clientIDKey = "dummyKey"
        
        let service = AnimeService(configuration: dummyConfig)
        
        // Act & Assert
        await XCTAssertThrowsError(try await service.fetchAnimeList(limit: 1)) { error in
            let urlError = error as? URLError
            XCTAssertEqual(urlError?.code, URLError.badServerResponse)
        }
    }
}
