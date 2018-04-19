import SwiftyVector

public protocol Matrix: Equatable, CustomStringConvertible, CustomDebugStringConvertible {
    associatedtype Scalar
    associatedtype RowVector : Vector
    associatedtype ColumnVector : Vector
    associatedtype Transpose : Matrix
    
    var rowCount: Int { get }
    var columnCount: Int { get }
    
    var transpose: Transpose { get }

    static var zero: Self { get }

    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Scalar) -> Self
    static func *(lhs: Scalar, rhs: Self) -> Self
    static func *(lhs: Self, rhs: ColumnVector) -> RowVector
    static func *(lhs: RowVector, rhs: Self) -> ColumnVector
    static func /(lhs: Self, rhs: Scalar) -> Self
    
    static prefix func +(value: Self) -> Self
    static prefix func -(value: Self) -> Self
    
    static func +=(lhs: inout Self, rhs: Self)
    static func -=(lhs: inout Self, rhs: Self)
    static func *=(lhs: inout Self, rhs: Scalar)
    static func /=(lhs: inout Self, rhs: Scalar)
}

extension Matrix {
    public static func +=(lhs: inout Self, rhs: Self) {
        return lhs = lhs + rhs
    }
    
    public static func -=(lhs: inout Self, rhs: Self) {
        return lhs = lhs - rhs
    }
    
    public static func *=(lhs: inout Self, rhs: Scalar) {
        return lhs = lhs * rhs
    }
    
    public static func /=(lhs: inout Self, rhs: Scalar) {
        return lhs = lhs / rhs
    }
}
