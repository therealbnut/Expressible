/// ExpressibleByStringLiteral

/// When implementing ExpressibleByStringLiteral
///  * No need to implement init(extendedGraphemeClusterLiteral:)
///  * No need to implement init(unicodeScalarLiteral:)

extension ExpressibleByStringLiteral
    where Self.StringLiteralType == String
{
    public init(extendedGraphemeClusterLiteral value: Character) {
        self.init(stringLiteral: String(describing: value))
    }
}
