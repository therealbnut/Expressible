
extension ExpressibleByExtendedGraphemeClusterLiteral where Self: ExpressibleByStringLiteral {
    public init(extendedGraphemeClusterLiteral value: StringLiteralType) {
        self.init(stringLiteral: value)
    }
}

extension ExpressibleByUnicodeScalarLiteral where Self: ExpressibleByExtendedGraphemeClusterLiteral {
    public init(unicodeScalarLiteral value: ExtendedGraphemeClusterLiteralType) {
        self.init(extendedGraphemeClusterLiteral: value)
    }
}
