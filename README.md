## Expressible

Make it easier to conform to Swift Standard Library Protocols

**Do this**
```swift
extension MyType: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self.init(string: value)
    }
}
```

**Not this**
```swift
extension MyType: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self.init(string: value)
    }
    
    public init(extendedGraphemeClusterLiteral value: StringLiteralType) {
        self.init(string: value)
    }
    
    public init(unicodeScalarLiteral value: ExtendedGraphemeClusterLiteralType) {
        self.init(string: value)
    }
}
```
