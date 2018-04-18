#if canImport(simd)
@_exported import simd
#endif

#if canImport(simd)
public typealias Matrix2x2f = matrix_float2x2

extension Matrix2x2f : SquareMatrix {
    public typealias Scalar = Float
    public typealias Transpose = Matrix2x2f

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 2
    }

    public static var zero: Matrix2x2f {
        return matrix_float2x2()
    }

    public static func /(lhs: Matrix2x2f, rhs: Float) -> Matrix2x2f {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix2x2f) -> Matrix2x2f {
        return value
    }

    public static prefix func -(value: Matrix2x2f) -> Matrix2x2f {
        return value * -1
    }

    public static var identity: Matrix2x2f {
        return matrix_identity_float2x2
    }
}
#endif

#if canImport(simd)
public typealias Matrix2x2 = matrix_double2x2

extension Matrix2x2 : SquareMatrix {
    public typealias Scalar = Double
    public typealias Transpose = Matrix2x2

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 2
    }

    public static var zero: Matrix2x2 {
        return matrix_double2x2()
    }

    public static func /(lhs: Matrix2x2, rhs: Double) -> Matrix2x2 {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix2x2) -> Matrix2x2 {
        return value
    }

    public static prefix func -(value: Matrix2x2) -> Matrix2x2 {
        return value * -1
    }

    public static var identity: Matrix2x2 {
        return matrix_identity_double2x2
    }
}
#endif

#if canImport(simd)
public typealias Matrix2x3f = matrix_float2x3

extension Matrix2x3f : Matrix {
    public typealias Scalar = Float
    public typealias Transpose = Matrix3x2f

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 3
    }

    public static var zero: Matrix2x3f {
        return matrix_float2x3()
    }

    public static func /(lhs: Matrix2x3f, rhs: Float) -> Matrix2x3f {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix2x3f) -> Matrix2x3f {
        return value
    }

    public static prefix func -(value: Matrix2x3f) -> Matrix2x3f {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix2x3 = matrix_double2x3

extension Matrix2x3 : Matrix {
    public typealias Scalar = Double
    public typealias Transpose = Matrix3x2

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 3
    }

    public static var zero: Matrix2x3 {
        return matrix_double2x3()
    }

    public static func /(lhs: Matrix2x3, rhs: Double) -> Matrix2x3 {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix2x3) -> Matrix2x3 {
        return value
    }

    public static prefix func -(value: Matrix2x3) -> Matrix2x3 {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix2x4f = matrix_float2x4

extension Matrix2x4f : Matrix {
    public typealias Scalar = Float
    public typealias Transpose = Matrix4x2f

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 4
    }

    public static var zero: Matrix2x4f {
        return matrix_float2x4()
    }

    public static func /(lhs: Matrix2x4f, rhs: Float) -> Matrix2x4f {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix2x4f) -> Matrix2x4f {
        return value
    }

    public static prefix func -(value: Matrix2x4f) -> Matrix2x4f {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix2x4 = matrix_double2x4

extension Matrix2x4 : Matrix {
    public typealias Scalar = Double
    public typealias Transpose = Matrix4x2

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 4
    }

    public static var zero: Matrix2x4 {
        return matrix_double2x4()
    }

    public static func /(lhs: Matrix2x4, rhs: Double) -> Matrix2x4 {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix2x4) -> Matrix2x4 {
        return value
    }

    public static prefix func -(value: Matrix2x4) -> Matrix2x4 {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix3x2f = matrix_float3x2

extension Matrix3x2f : Matrix {
    public typealias Scalar = Float
    public typealias Transpose = Matrix2x3f

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 2
    }

    public static var zero: Matrix3x2f {
        return matrix_float3x2()
    }

    public static func /(lhs: Matrix3x2f, rhs: Float) -> Matrix3x2f {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix3x2f) -> Matrix3x2f {
        return value
    }

    public static prefix func -(value: Matrix3x2f) -> Matrix3x2f {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix3x2 = matrix_double3x2

extension Matrix3x2 : Matrix {
    public typealias Scalar = Double
    public typealias Transpose = Matrix2x3

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 2
    }

    public static var zero: Matrix3x2 {
        return matrix_double3x2()
    }

    public static func /(lhs: Matrix3x2, rhs: Double) -> Matrix3x2 {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix3x2) -> Matrix3x2 {
        return value
    }

    public static prefix func -(value: Matrix3x2) -> Matrix3x2 {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix3x3f = matrix_float3x3

extension Matrix3x3f : SquareMatrix {
    public typealias Scalar = Float
    public typealias Transpose = Matrix3x3f

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 3
    }

    public static var zero: Matrix3x3f {
        return matrix_float3x3()
    }

    public static func /(lhs: Matrix3x3f, rhs: Float) -> Matrix3x3f {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix3x3f) -> Matrix3x3f {
        return value
    }

    public static prefix func -(value: Matrix3x3f) -> Matrix3x3f {
        return value * -1
    }

    public static var identity: Matrix3x3f {
        return matrix_identity_float3x3
    }
}
#endif

#if canImport(simd)
public typealias Matrix3x3 = matrix_double3x3

extension Matrix3x3 : SquareMatrix {
    public typealias Scalar = Double
    public typealias Transpose = Matrix3x3

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 3
    }

    public static var zero: Matrix3x3 {
        return matrix_double3x3()
    }

    public static func /(lhs: Matrix3x3, rhs: Double) -> Matrix3x3 {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix3x3) -> Matrix3x3 {
        return value
    }

    public static prefix func -(value: Matrix3x3) -> Matrix3x3 {
        return value * -1
    }

    public static var identity: Matrix3x3 {
        return matrix_identity_double3x3
    }
}
#endif

#if canImport(simd)
public typealias Matrix3x4f = matrix_float3x4

extension Matrix3x4f : Matrix {
    public typealias Scalar = Float
    public typealias Transpose = Matrix4x3f

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 4
    }

    public static var zero: Matrix3x4f {
        return matrix_float3x4()
    }

    public static func /(lhs: Matrix3x4f, rhs: Float) -> Matrix3x4f {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix3x4f) -> Matrix3x4f {
        return value
    }

    public static prefix func -(value: Matrix3x4f) -> Matrix3x4f {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix3x4 = matrix_double3x4

extension Matrix3x4 : Matrix {
    public typealias Scalar = Double
    public typealias Transpose = Matrix4x3

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 4
    }

    public static var zero: Matrix3x4 {
        return matrix_double3x4()
    }

    public static func /(lhs: Matrix3x4, rhs: Double) -> Matrix3x4 {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix3x4) -> Matrix3x4 {
        return value
    }

    public static prefix func -(value: Matrix3x4) -> Matrix3x4 {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix4x2f = matrix_float4x2

extension Matrix4x2f : Matrix {
    public typealias Scalar = Float
    public typealias Transpose = Matrix2x4f

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 2
    }

    public static var zero: Matrix4x2f {
        return matrix_float4x2()
    }

    public static func /(lhs: Matrix4x2f, rhs: Float) -> Matrix4x2f {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix4x2f) -> Matrix4x2f {
        return value
    }

    public static prefix func -(value: Matrix4x2f) -> Matrix4x2f {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix4x2 = matrix_double4x2

extension Matrix4x2 : Matrix {
    public typealias Scalar = Double
    public typealias Transpose = Matrix2x4

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 2
    }

    public static var zero: Matrix4x2 {
        return matrix_double4x2()
    }

    public static func /(lhs: Matrix4x2, rhs: Double) -> Matrix4x2 {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix4x2) -> Matrix4x2 {
        return value
    }

    public static prefix func -(value: Matrix4x2) -> Matrix4x2 {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix4x3f = matrix_float4x3

extension Matrix4x3f : Matrix {
    public typealias Scalar = Float
    public typealias Transpose = Matrix3x4f

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 3
    }

    public static var zero: Matrix4x3f {
        return matrix_float4x3()
    }

    public static func /(lhs: Matrix4x3f, rhs: Float) -> Matrix4x3f {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix4x3f) -> Matrix4x3f {
        return value
    }

    public static prefix func -(value: Matrix4x3f) -> Matrix4x3f {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix4x3 = matrix_double4x3

extension Matrix4x3 : Matrix {
    public typealias Scalar = Double
    public typealias Transpose = Matrix3x4

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 3
    }

    public static var zero: Matrix4x3 {
        return matrix_double4x3()
    }

    public static func /(lhs: Matrix4x3, rhs: Double) -> Matrix4x3 {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix4x3) -> Matrix4x3 {
        return value
    }

    public static prefix func -(value: Matrix4x3) -> Matrix4x3 {
        return value * -1
    }
}
#endif

#if canImport(simd)
public typealias Matrix4x4f = matrix_float4x4

extension Matrix4x4f : SquareMatrix {
    public typealias Scalar = Float
    public typealias Transpose = Matrix4x4f

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 4
    }

    public static var zero: Matrix4x4f {
        return matrix_float4x4()
    }

    public static func /(lhs: Matrix4x4f, rhs: Float) -> Matrix4x4f {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix4x4f) -> Matrix4x4f {
        return value
    }

    public static prefix func -(value: Matrix4x4f) -> Matrix4x4f {
        return value * -1
    }

    public static var identity: Matrix4x4f {
        return matrix_identity_float4x4
    }
}
#endif

#if canImport(simd)
public typealias Matrix4x4 = matrix_double4x4

extension Matrix4x4 : SquareMatrix {
    public typealias Scalar = Double
    public typealias Transpose = Matrix4x4

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 4
    }

    public static var zero: Matrix4x4 {
        return matrix_double4x4()
    }

    public static func /(lhs: Matrix4x4, rhs: Double) -> Matrix4x4 {
        return lhs * (1.0 / rhs)
    }

    public static prefix func +(value: Matrix4x4) -> Matrix4x4 {
        return value
    }

    public static prefix func -(value: Matrix4x4) -> Matrix4x4 {
        return value * -1
    }

    public static var identity: Matrix4x4 {
        return matrix_identity_double4x4
    }
}
#endif
