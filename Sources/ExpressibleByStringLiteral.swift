
// MARK: - ExpressibleByStringLiteral

/// When implementing ExpressibleByStringLiteral
///  * No need to implement init(extendedGraphemeClusterLiteral:)
///  * No need to implement init(unicodeScalarLiteral:)

extension ExpressibleByExtendedGraphemeClusterLiteral where Self: ExpressibleByStringLiteral {
    public init(extendedGraphemeClusterLiteral value: StringLiteralType) {
        self.init(stringLiteral: value)
    }
}

/// When implementing ExpressibleByExtendedGraphemeClusterLiteral
///  * No need to implement init(unicodeScalarLiteral:)

extension ExpressibleByUnicodeScalarLiteral where Self: ExpressibleByExtendedGraphemeClusterLiteral {
    public init(unicodeScalarLiteral value: ExtendedGraphemeClusterLiteralType) {
        self.init(extendedGraphemeClusterLiteral: value)
    }
}
