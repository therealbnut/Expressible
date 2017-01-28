import XCTest
@testable import Expressible

fileprivate struct ExampleWithString: ExpressibleByExtendedGraphemeClusterLiteral {
    var value: Character
    init(extendedGraphemeClusterLiteral value: Character) {
        self.value = value
    }
}

class ExpressibleByExtendedGraphemeClusterLiteralTests: XCTestCase {

    func testCharacterLiteral() {
        let example: ExampleWithString = "❄︎"
        XCTAssertEqual(example.value, "❄︎")
    }

    static var allTests : [(String, (ExpressibleByExtendedGraphemeClusterLiteralTests) -> () throws -> Void)] {
        return [
            ("testCharacterLiteral", testCharacterLiteral)
        ]
    }
}
