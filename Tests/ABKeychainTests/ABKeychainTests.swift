import XCTest
@testable import ABKeychain

final class ABKeychainTests: XCTestCase {
    
    override func setUp() {
        do {
            try ABKeychain(service: "io.aben.keychain.test", account: "say").saveItem("Hello, World!")
        } catch (let error) {
            print(error)
        }
    }
    
    func testReadItem() throws {
        var storedIdentifier: String = ""
        do {
            storedIdentifier = try ABKeychain(service: "io.aben.keychain.test", account: "say").readItem()
        } catch (let error) {
            print(error)
        }
        
        XCTAssertEqual(storedIdentifier, "")
    }
    
}
