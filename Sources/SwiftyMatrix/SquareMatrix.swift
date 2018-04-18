public protocol SquareMatrix : Matrix {
    static func *(lhs: Self, rhs: Self) -> Self

    var transpose: Self { get }
    var inverse: Self { get }
    
    static var identity: Self { get }
}
