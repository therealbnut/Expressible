import XCTest
@testable import Expressible

fileprivate struct ExampleWithString: ExpressibleByStringLiteral {
    var value: String
    init(stringLiteral value: String) {
        self.value = value
    }
}

class ExpressibleByStringLiteralTests: XCTestCase {

    func testStringLiteral() {
        let example: ExampleWithString = "ñ"
        XCTAssertEqual(example.value, "ñ")
    }

    static var allTests : [(String, (ExpressibleByStringLiteralTests) -> () throws -> Void)] {
        return [
            ("testStringLiteral", testStringLiteral),
        ]
    }
}
