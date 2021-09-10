import XCTest
@testable import MPKioskAssets

final class MPKioskAssetsTests: XCTestCase {
  @available(iOS 13.0.0, *)
  func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MPKioskAssets().text, "Hello, World!")
    }
}
