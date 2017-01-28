/// ExpressibleByExtendedGraphemeClusterLiteral

/// When implementing ExpressibleByExtendedGraphemeClusterLiteral
///  * No need to implement init(unicodeScalarLiteral:)

extension ExpressibleByUnicodeScalarLiteral where Self: ExpressibleByExtendedGraphemeClusterLiteral {
    public init(unicodeScalarLiteral value: ExtendedGraphemeClusterLiteralType) {
        self.init(extendedGraphemeClusterLiteral: value)
    }
}
