/// ExpressibleByExtendedGraphemeClusterLiteral

/// When implementing ExpressibleByExtendedGraphemeClusterLiteral
///  * No need to implement init(unicodeScalarLiteral:)

extension ExpressibleByExtendedGraphemeClusterLiteral
    where Self.ExtendedGraphemeClusterLiteralType == Character
{
    public init(unicodeScalarLiteral value: UnicodeScalar) {
        self.init(extendedGraphemeClusterLiteral: Character(value))
    }
}
