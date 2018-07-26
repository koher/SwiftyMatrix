import SwiftyVector

#if canImport(simd)
@_exported import simd
#endif

#if canImport(simd)
public struct Matrix2x2f {
    fileprivate var matrix: matrix_float2x2

    public init(_ matrix: matrix_float2x2) {
        self.matrix = matrix
    }
}

extension matrix_float2x2 {
    init(_ matrix: Matrix2x2f) {
        self = matrix.matrix
    }
}

extension Matrix2x2f : SquareMatrix {
    public typealias Scalar = Float
    public typealias RowVector = Vector2f
    public typealias ColumnVector = Vector2f
    public typealias Transpose = Matrix2x2f

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 2
    }
    
    public var transpose: Matrix2x2f {
        return Matrix2x2f(matrix.transpose)
    }

    public static var zero: Matrix2x2f {
        return Matrix2x2f(matrix_float2x2())
    }

    public static func +(lhs: Matrix2x2f, rhs: Matrix2x2f) -> Matrix2x2f {
        return Matrix2x2f(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix2x2f, rhs: Matrix2x2f) -> Matrix2x2f {
        return Matrix2x2f(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix2x2f, rhs: Float) -> Matrix2x2f {
        return Matrix2x2f(lhs.matrix * rhs)
    }

    public static func *(lhs: Float, rhs: Matrix2x2f) -> Matrix2x2f {
        return Matrix2x2f(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix2x2f, rhs: Vector2f) -> Vector2f {
        return /*Vector2f(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector2f, rhs: Matrix2x2f) -> Vector2f {
        return /*Vector2f(*/lhs * rhs.matrix/*)*/
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

    public static func *(lhs: Matrix2x2f, rhs: Matrix2x2f) -> Matrix2x2f {
        return Matrix2x2f(lhs.matrix * rhs.matrix)
    }

    public var inverse: Matrix2x2f {
        return Matrix2x2f(matrix.inverse)
    }

    public static var identity: Matrix2x2f {
        return Matrix2x2f(matrix_identity_float2x2)
    }

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription)],
        ]
        """
    }
}

extension Matrix2x2f { // Equatable
    public static func ==(lhs: Matrix2x2f, rhs: Matrix2x2f) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix2x2f : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector2f...) {
        precondition(elements.count == 2)
        
        self.init(matrix_float2x2(
            [elements[0].x, elements[1].x],
            [elements[0].y, elements[1].y]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix2x2 {
    fileprivate var matrix: matrix_double2x2

    public init(_ matrix: matrix_double2x2) {
        self.matrix = matrix
    }
}

extension matrix_double2x2 {
    init(_ matrix: Matrix2x2) {
        self = matrix.matrix
    }
}

extension Matrix2x2 : SquareMatrix {
    public typealias Scalar = Double
    public typealias RowVector = Vector2
    public typealias ColumnVector = Vector2
    public typealias Transpose = Matrix2x2

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 2
    }
    
    public var transpose: Matrix2x2 {
        return Matrix2x2(matrix.transpose)
    }

    public static var zero: Matrix2x2 {
        return Matrix2x2(matrix_double2x2())
    }

    public static func +(lhs: Matrix2x2, rhs: Matrix2x2) -> Matrix2x2 {
        return Matrix2x2(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix2x2, rhs: Matrix2x2) -> Matrix2x2 {
        return Matrix2x2(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix2x2, rhs: Double) -> Matrix2x2 {
        return Matrix2x2(lhs.matrix * rhs)
    }

    public static func *(lhs: Double, rhs: Matrix2x2) -> Matrix2x2 {
        return Matrix2x2(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix2x2, rhs: Vector2) -> Vector2 {
        return /*Vector2(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector2, rhs: Matrix2x2) -> Vector2 {
        return /*Vector2(*/lhs * rhs.matrix/*)*/
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

    public static func *(lhs: Matrix2x2, rhs: Matrix2x2) -> Matrix2x2 {
        return Matrix2x2(lhs.matrix * rhs.matrix)
    }

    public var inverse: Matrix2x2 {
        return Matrix2x2(matrix.inverse)
    }

    public static var identity: Matrix2x2 {
        return Matrix2x2(matrix_identity_double2x2)
    }

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription)],
        ]
        """
    }
}

extension Matrix2x2 { // Equatable
    public static func ==(lhs: Matrix2x2, rhs: Matrix2x2) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix2x2 : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector2...) {
        precondition(elements.count == 2)
        
        self.init(matrix_double2x2(
            [elements[0].x, elements[1].x],
            [elements[0].y, elements[1].y]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix2x3f {
    fileprivate var matrix: matrix_float3x2

    public init(_ matrix: matrix_float3x2) {
        self.matrix = matrix
    }
}

extension matrix_float3x2 {
    init(_ matrix: Matrix2x3f) {
        self = matrix.matrix
    }
}

extension Matrix2x3f : Matrix {
    public typealias Scalar = Float
    public typealias RowVector = Vector2f
    public typealias ColumnVector = Vector3f
    public typealias Transpose = Matrix3x2f

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 3
    }
    
    public var transpose: Matrix3x2f {
        return Matrix3x2f(matrix.transpose)
    }

    public static var zero: Matrix2x3f {
        return Matrix2x3f(matrix_float3x2())
    }

    public static func +(lhs: Matrix2x3f, rhs: Matrix2x3f) -> Matrix2x3f {
        return Matrix2x3f(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix2x3f, rhs: Matrix2x3f) -> Matrix2x3f {
        return Matrix2x3f(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix2x3f, rhs: Float) -> Matrix2x3f {
        return Matrix2x3f(lhs.matrix * rhs)
    }

    public static func *(lhs: Float, rhs: Matrix2x3f) -> Matrix2x3f {
        return Matrix2x3f(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix2x3f, rhs: Vector3f) -> Vector2f {
        return /*Vector2f(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector2f, rhs: Matrix2x3f) -> Vector3f {
        return /*Vector3f(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription)],
        ]
        """
    }
}

extension Matrix2x3f { // Equatable
    public static func ==(lhs: Matrix2x3f, rhs: Matrix2x3f) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix2x3f : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector3f...) {
        precondition(elements.count == 2)
        
        self.init(matrix_float3x2(
            [elements[0].x, elements[1].x],
            [elements[0].y, elements[1].y],
            [elements[0].z, elements[1].z]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix2x3 {
    fileprivate var matrix: matrix_double3x2

    public init(_ matrix: matrix_double3x2) {
        self.matrix = matrix
    }
}

extension matrix_double3x2 {
    init(_ matrix: Matrix2x3) {
        self = matrix.matrix
    }
}

extension Matrix2x3 : Matrix {
    public typealias Scalar = Double
    public typealias RowVector = Vector2
    public typealias ColumnVector = Vector3
    public typealias Transpose = Matrix3x2

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 3
    }
    
    public var transpose: Matrix3x2 {
        return Matrix3x2(matrix.transpose)
    }

    public static var zero: Matrix2x3 {
        return Matrix2x3(matrix_double3x2())
    }

    public static func +(lhs: Matrix2x3, rhs: Matrix2x3) -> Matrix2x3 {
        return Matrix2x3(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix2x3, rhs: Matrix2x3) -> Matrix2x3 {
        return Matrix2x3(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix2x3, rhs: Double) -> Matrix2x3 {
        return Matrix2x3(lhs.matrix * rhs)
    }

    public static func *(lhs: Double, rhs: Matrix2x3) -> Matrix2x3 {
        return Matrix2x3(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix2x3, rhs: Vector3) -> Vector2 {
        return /*Vector2(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector2, rhs: Matrix2x3) -> Vector3 {
        return /*Vector3(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription)],
        ]
        """
    }
}

extension Matrix2x3 { // Equatable
    public static func ==(lhs: Matrix2x3, rhs: Matrix2x3) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix2x3 : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector3...) {
        precondition(elements.count == 2)
        
        self.init(matrix_double3x2(
            [elements[0].x, elements[1].x],
            [elements[0].y, elements[1].y],
            [elements[0].z, elements[1].z]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix2x4f {
    fileprivate var matrix: matrix_float4x2

    public init(_ matrix: matrix_float4x2) {
        self.matrix = matrix
    }
}

extension matrix_float4x2 {
    init(_ matrix: Matrix2x4f) {
        self = matrix.matrix
    }
}

extension Matrix2x4f : Matrix {
    public typealias Scalar = Float
    public typealias RowVector = Vector2f
    public typealias ColumnVector = Vector4f
    public typealias Transpose = Matrix4x2f

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 4
    }
    
    public var transpose: Matrix4x2f {
        return Matrix4x2f(matrix.transpose)
    }

    public static var zero: Matrix2x4f {
        return Matrix2x4f(matrix_float4x2())
    }

    public static func +(lhs: Matrix2x4f, rhs: Matrix2x4f) -> Matrix2x4f {
        return Matrix2x4f(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix2x4f, rhs: Matrix2x4f) -> Matrix2x4f {
        return Matrix2x4f(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix2x4f, rhs: Float) -> Matrix2x4f {
        return Matrix2x4f(lhs.matrix * rhs)
    }

    public static func *(lhs: Float, rhs: Matrix2x4f) -> Matrix2x4f {
        return Matrix2x4f(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix2x4f, rhs: Vector4f) -> Vector2f {
        return /*Vector2f(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector2f, rhs: Matrix2x4f) -> Vector4f {
        return /*Vector4f(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description), \(matrix.columns.3.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description), \(matrix.columns.3.y.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription), \(matrix.columns.3.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription), \(matrix.columns.3.y.debugDescription)],
        ]
        """
    }
}

extension Matrix2x4f { // Equatable
    public static func ==(lhs: Matrix2x4f, rhs: Matrix2x4f) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix2x4f : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector4f...) {
        precondition(elements.count == 2)
        
        self.init(matrix_float4x2(
            [elements[0].x, elements[1].x],
            [elements[0].y, elements[1].y],
            [elements[0].z, elements[1].z],
            [elements[0].w, elements[1].w]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix2x4 {
    fileprivate var matrix: matrix_double4x2

    public init(_ matrix: matrix_double4x2) {
        self.matrix = matrix
    }
}

extension matrix_double4x2 {
    init(_ matrix: Matrix2x4) {
        self = matrix.matrix
    }
}

extension Matrix2x4 : Matrix {
    public typealias Scalar = Double
    public typealias RowVector = Vector2
    public typealias ColumnVector = Vector4
    public typealias Transpose = Matrix4x2

    public var rowCount: Int {
        return 2
    }

    public var columnCount: Int {
        return 4
    }
    
    public var transpose: Matrix4x2 {
        return Matrix4x2(matrix.transpose)
    }

    public static var zero: Matrix2x4 {
        return Matrix2x4(matrix_double4x2())
    }

    public static func +(lhs: Matrix2x4, rhs: Matrix2x4) -> Matrix2x4 {
        return Matrix2x4(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix2x4, rhs: Matrix2x4) -> Matrix2x4 {
        return Matrix2x4(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix2x4, rhs: Double) -> Matrix2x4 {
        return Matrix2x4(lhs.matrix * rhs)
    }

    public static func *(lhs: Double, rhs: Matrix2x4) -> Matrix2x4 {
        return Matrix2x4(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix2x4, rhs: Vector4) -> Vector2 {
        return /*Vector2(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector2, rhs: Matrix2x4) -> Vector4 {
        return /*Vector4(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description), \(matrix.columns.3.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description), \(matrix.columns.3.y.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription), \(matrix.columns.3.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription), \(matrix.columns.3.y.debugDescription)],
        ]
        """
    }
}

extension Matrix2x4 { // Equatable
    public static func ==(lhs: Matrix2x4, rhs: Matrix2x4) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix2x4 : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector4...) {
        precondition(elements.count == 2)
        
        self.init(matrix_double4x2(
            [elements[0].x, elements[1].x],
            [elements[0].y, elements[1].y],
            [elements[0].z, elements[1].z],
            [elements[0].w, elements[1].w]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix3x2f {
    fileprivate var matrix: matrix_float2x3

    public init(_ matrix: matrix_float2x3) {
        self.matrix = matrix
    }
}

extension matrix_float2x3 {
    init(_ matrix: Matrix3x2f) {
        self = matrix.matrix
    }
}

extension Matrix3x2f : Matrix {
    public typealias Scalar = Float
    public typealias RowVector = Vector3f
    public typealias ColumnVector = Vector2f
    public typealias Transpose = Matrix2x3f

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 2
    }
    
    public var transpose: Matrix2x3f {
        return Matrix2x3f(matrix.transpose)
    }

    public static var zero: Matrix3x2f {
        return Matrix3x2f(matrix_float2x3())
    }

    public static func +(lhs: Matrix3x2f, rhs: Matrix3x2f) -> Matrix3x2f {
        return Matrix3x2f(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix3x2f, rhs: Matrix3x2f) -> Matrix3x2f {
        return Matrix3x2f(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix3x2f, rhs: Float) -> Matrix3x2f {
        return Matrix3x2f(lhs.matrix * rhs)
    }

    public static func *(lhs: Float, rhs: Matrix3x2f) -> Matrix3x2f {
        return Matrix3x2f(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix3x2f, rhs: Vector2f) -> Vector3f {
        return /*Vector3f(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector3f, rhs: Matrix3x2f) -> Vector2f {
        return /*Vector2f(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription)],
        ]
        """
    }
}

extension Matrix3x2f { // Equatable
    public static func ==(lhs: Matrix3x2f, rhs: Matrix3x2f) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix3x2f : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector2f...) {
        precondition(elements.count == 3)
        
        self.init(matrix_float2x3(
            [elements[0].x, elements[1].x, elements[2].x],
            [elements[0].y, elements[1].y, elements[2].y]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix3x2 {
    fileprivate var matrix: matrix_double2x3

    public init(_ matrix: matrix_double2x3) {
        self.matrix = matrix
    }
}

extension matrix_double2x3 {
    init(_ matrix: Matrix3x2) {
        self = matrix.matrix
    }
}

extension Matrix3x2 : Matrix {
    public typealias Scalar = Double
    public typealias RowVector = Vector3
    public typealias ColumnVector = Vector2
    public typealias Transpose = Matrix2x3

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 2
    }
    
    public var transpose: Matrix2x3 {
        return Matrix2x3(matrix.transpose)
    }

    public static var zero: Matrix3x2 {
        return Matrix3x2(matrix_double2x3())
    }

    public static func +(lhs: Matrix3x2, rhs: Matrix3x2) -> Matrix3x2 {
        return Matrix3x2(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix3x2, rhs: Matrix3x2) -> Matrix3x2 {
        return Matrix3x2(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix3x2, rhs: Double) -> Matrix3x2 {
        return Matrix3x2(lhs.matrix * rhs)
    }

    public static func *(lhs: Double, rhs: Matrix3x2) -> Matrix3x2 {
        return Matrix3x2(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix3x2, rhs: Vector2) -> Vector3 {
        return /*Vector3(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector3, rhs: Matrix3x2) -> Vector2 {
        return /*Vector2(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription)],
        ]
        """
    }
}

extension Matrix3x2 { // Equatable
    public static func ==(lhs: Matrix3x2, rhs: Matrix3x2) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix3x2 : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector2...) {
        precondition(elements.count == 3)
        
        self.init(matrix_double2x3(
            [elements[0].x, elements[1].x, elements[2].x],
            [elements[0].y, elements[1].y, elements[2].y]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix3x3f {
    fileprivate var matrix: matrix_float3x3

    public init(_ matrix: matrix_float3x3) {
        self.matrix = matrix
    }
}

extension matrix_float3x3 {
    init(_ matrix: Matrix3x3f) {
        self = matrix.matrix
    }
}

extension Matrix3x3f : SquareMatrix {
    public typealias Scalar = Float
    public typealias RowVector = Vector3f
    public typealias ColumnVector = Vector3f
    public typealias Transpose = Matrix3x3f

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 3
    }
    
    public var transpose: Matrix3x3f {
        return Matrix3x3f(matrix.transpose)
    }

    public static var zero: Matrix3x3f {
        return Matrix3x3f(matrix_float3x3())
    }

    public static func +(lhs: Matrix3x3f, rhs: Matrix3x3f) -> Matrix3x3f {
        return Matrix3x3f(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix3x3f, rhs: Matrix3x3f) -> Matrix3x3f {
        return Matrix3x3f(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix3x3f, rhs: Float) -> Matrix3x3f {
        return Matrix3x3f(lhs.matrix * rhs)
    }

    public static func *(lhs: Float, rhs: Matrix3x3f) -> Matrix3x3f {
        return Matrix3x3f(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix3x3f, rhs: Vector3f) -> Vector3f {
        return /*Vector3f(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector3f, rhs: Matrix3x3f) -> Vector3f {
        return /*Vector3f(*/lhs * rhs.matrix/*)*/
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

    public static func *(lhs: Matrix3x3f, rhs: Matrix3x3f) -> Matrix3x3f {
        return Matrix3x3f(lhs.matrix * rhs.matrix)
    }

    public var inverse: Matrix3x3f {
        return Matrix3x3f(matrix.inverse)
    }

    public static var identity: Matrix3x3f {
        return Matrix3x3f(matrix_identity_float3x3)
    }

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description), \(matrix.columns.2.z.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription), \(matrix.columns.2.z.debugDescription)],
        ]
        """
    }
}

extension Matrix3x3f { // Equatable
    public static func ==(lhs: Matrix3x3f, rhs: Matrix3x3f) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix3x3f : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector3f...) {
        precondition(elements.count == 3)
        
        self.init(matrix_float3x3(
            [elements[0].x, elements[1].x, elements[2].x],
            [elements[0].y, elements[1].y, elements[2].y],
            [elements[0].z, elements[1].z, elements[2].z]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix3x3 {
    fileprivate var matrix: matrix_double3x3

    public init(_ matrix: matrix_double3x3) {
        self.matrix = matrix
    }
}

extension matrix_double3x3 {
    init(_ matrix: Matrix3x3) {
        self = matrix.matrix
    }
}

extension Matrix3x3 : SquareMatrix {
    public typealias Scalar = Double
    public typealias RowVector = Vector3
    public typealias ColumnVector = Vector3
    public typealias Transpose = Matrix3x3

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 3
    }
    
    public var transpose: Matrix3x3 {
        return Matrix3x3(matrix.transpose)
    }

    public static var zero: Matrix3x3 {
        return Matrix3x3(matrix_double3x3())
    }

    public static func +(lhs: Matrix3x3, rhs: Matrix3x3) -> Matrix3x3 {
        return Matrix3x3(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix3x3, rhs: Matrix3x3) -> Matrix3x3 {
        return Matrix3x3(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix3x3, rhs: Double) -> Matrix3x3 {
        return Matrix3x3(lhs.matrix * rhs)
    }

    public static func *(lhs: Double, rhs: Matrix3x3) -> Matrix3x3 {
        return Matrix3x3(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix3x3, rhs: Vector3) -> Vector3 {
        return /*Vector3(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector3, rhs: Matrix3x3) -> Vector3 {
        return /*Vector3(*/lhs * rhs.matrix/*)*/
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

    public static func *(lhs: Matrix3x3, rhs: Matrix3x3) -> Matrix3x3 {
        return Matrix3x3(lhs.matrix * rhs.matrix)
    }

    public var inverse: Matrix3x3 {
        return Matrix3x3(matrix.inverse)
    }

    public static var identity: Matrix3x3 {
        return Matrix3x3(matrix_identity_double3x3)
    }

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description), \(matrix.columns.2.z.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription), \(matrix.columns.2.z.debugDescription)],
        ]
        """
    }
}

extension Matrix3x3 { // Equatable
    public static func ==(lhs: Matrix3x3, rhs: Matrix3x3) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix3x3 : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector3...) {
        precondition(elements.count == 3)
        
        self.init(matrix_double3x3(
            [elements[0].x, elements[1].x, elements[2].x],
            [elements[0].y, elements[1].y, elements[2].y],
            [elements[0].z, elements[1].z, elements[2].z]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix3x4f {
    fileprivate var matrix: matrix_float4x3

    public init(_ matrix: matrix_float4x3) {
        self.matrix = matrix
    }
}

extension matrix_float4x3 {
    init(_ matrix: Matrix3x4f) {
        self = matrix.matrix
    }
}

extension Matrix3x4f : Matrix {
    public typealias Scalar = Float
    public typealias RowVector = Vector3f
    public typealias ColumnVector = Vector4f
    public typealias Transpose = Matrix4x3f

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 4
    }
    
    public var transpose: Matrix4x3f {
        return Matrix4x3f(matrix.transpose)
    }

    public static var zero: Matrix3x4f {
        return Matrix3x4f(matrix_float4x3())
    }

    public static func +(lhs: Matrix3x4f, rhs: Matrix3x4f) -> Matrix3x4f {
        return Matrix3x4f(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix3x4f, rhs: Matrix3x4f) -> Matrix3x4f {
        return Matrix3x4f(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix3x4f, rhs: Float) -> Matrix3x4f {
        return Matrix3x4f(lhs.matrix * rhs)
    }

    public static func *(lhs: Float, rhs: Matrix3x4f) -> Matrix3x4f {
        return Matrix3x4f(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix3x4f, rhs: Vector4f) -> Vector3f {
        return /*Vector3f(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector3f, rhs: Matrix3x4f) -> Vector4f {
        return /*Vector4f(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description), \(matrix.columns.3.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description), \(matrix.columns.3.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description), \(matrix.columns.2.z.description), \(matrix.columns.3.z.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription), \(matrix.columns.3.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription), \(matrix.columns.3.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription), \(matrix.columns.2.z.debugDescription), \(matrix.columns.3.z.debugDescription)],
        ]
        """
    }
}

extension Matrix3x4f { // Equatable
    public static func ==(lhs: Matrix3x4f, rhs: Matrix3x4f) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix3x4f : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector4f...) {
        precondition(elements.count == 3)
        
        self.init(matrix_float4x3(
            [elements[0].x, elements[1].x, elements[2].x],
            [elements[0].y, elements[1].y, elements[2].y],
            [elements[0].z, elements[1].z, elements[2].z],
            [elements[0].w, elements[1].w, elements[2].w]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix3x4 {
    fileprivate var matrix: matrix_double4x3

    public init(_ matrix: matrix_double4x3) {
        self.matrix = matrix
    }
}

extension matrix_double4x3 {
    init(_ matrix: Matrix3x4) {
        self = matrix.matrix
    }
}

extension Matrix3x4 : Matrix {
    public typealias Scalar = Double
    public typealias RowVector = Vector3
    public typealias ColumnVector = Vector4
    public typealias Transpose = Matrix4x3

    public var rowCount: Int {
        return 3
    }

    public var columnCount: Int {
        return 4
    }
    
    public var transpose: Matrix4x3 {
        return Matrix4x3(matrix.transpose)
    }

    public static var zero: Matrix3x4 {
        return Matrix3x4(matrix_double4x3())
    }

    public static func +(lhs: Matrix3x4, rhs: Matrix3x4) -> Matrix3x4 {
        return Matrix3x4(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix3x4, rhs: Matrix3x4) -> Matrix3x4 {
        return Matrix3x4(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix3x4, rhs: Double) -> Matrix3x4 {
        return Matrix3x4(lhs.matrix * rhs)
    }

    public static func *(lhs: Double, rhs: Matrix3x4) -> Matrix3x4 {
        return Matrix3x4(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix3x4, rhs: Vector4) -> Vector3 {
        return /*Vector3(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector3, rhs: Matrix3x4) -> Vector4 {
        return /*Vector4(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description), \(matrix.columns.3.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description), \(matrix.columns.3.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description), \(matrix.columns.2.z.description), \(matrix.columns.3.z.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription), \(matrix.columns.3.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription), \(matrix.columns.3.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription), \(matrix.columns.2.z.debugDescription), \(matrix.columns.3.z.debugDescription)],
        ]
        """
    }
}

extension Matrix3x4 { // Equatable
    public static func ==(lhs: Matrix3x4, rhs: Matrix3x4) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix3x4 : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector4...) {
        precondition(elements.count == 3)
        
        self.init(matrix_double4x3(
            [elements[0].x, elements[1].x, elements[2].x],
            [elements[0].y, elements[1].y, elements[2].y],
            [elements[0].z, elements[1].z, elements[2].z],
            [elements[0].w, elements[1].w, elements[2].w]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix4x2f {
    fileprivate var matrix: matrix_float2x4

    public init(_ matrix: matrix_float2x4) {
        self.matrix = matrix
    }
}

extension matrix_float2x4 {
    init(_ matrix: Matrix4x2f) {
        self = matrix.matrix
    }
}

extension Matrix4x2f : Matrix {
    public typealias Scalar = Float
    public typealias RowVector = Vector4f
    public typealias ColumnVector = Vector2f
    public typealias Transpose = Matrix2x4f

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 2
    }
    
    public var transpose: Matrix2x4f {
        return Matrix2x4f(matrix.transpose)
    }

    public static var zero: Matrix4x2f {
        return Matrix4x2f(matrix_float2x4())
    }

    public static func +(lhs: Matrix4x2f, rhs: Matrix4x2f) -> Matrix4x2f {
        return Matrix4x2f(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix4x2f, rhs: Matrix4x2f) -> Matrix4x2f {
        return Matrix4x2f(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix4x2f, rhs: Float) -> Matrix4x2f {
        return Matrix4x2f(lhs.matrix * rhs)
    }

    public static func *(lhs: Float, rhs: Matrix4x2f) -> Matrix4x2f {
        return Matrix4x2f(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix4x2f, rhs: Vector2f) -> Vector4f {
        return /*Vector4f(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector4f, rhs: Matrix4x2f) -> Vector2f {
        return /*Vector2f(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description)],
            [\(matrix.columns.0.w.description), \(matrix.columns.1.w.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription)],
            [\(matrix.columns.0.w.debugDescription), \(matrix.columns.1.w.debugDescription)],
        ]
        """
    }
}

extension Matrix4x2f { // Equatable
    public static func ==(lhs: Matrix4x2f, rhs: Matrix4x2f) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix4x2f : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector2f...) {
        precondition(elements.count == 4)
        
        self.init(matrix_float2x4(
            [elements[0].x, elements[1].x, elements[2].x, elements[3].x],
            [elements[0].y, elements[1].y, elements[2].y, elements[3].y]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix4x2 {
    fileprivate var matrix: matrix_double2x4

    public init(_ matrix: matrix_double2x4) {
        self.matrix = matrix
    }
}

extension matrix_double2x4 {
    init(_ matrix: Matrix4x2) {
        self = matrix.matrix
    }
}

extension Matrix4x2 : Matrix {
    public typealias Scalar = Double
    public typealias RowVector = Vector4
    public typealias ColumnVector = Vector2
    public typealias Transpose = Matrix2x4

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 2
    }
    
    public var transpose: Matrix2x4 {
        return Matrix2x4(matrix.transpose)
    }

    public static var zero: Matrix4x2 {
        return Matrix4x2(matrix_double2x4())
    }

    public static func +(lhs: Matrix4x2, rhs: Matrix4x2) -> Matrix4x2 {
        return Matrix4x2(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix4x2, rhs: Matrix4x2) -> Matrix4x2 {
        return Matrix4x2(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix4x2, rhs: Double) -> Matrix4x2 {
        return Matrix4x2(lhs.matrix * rhs)
    }

    public static func *(lhs: Double, rhs: Matrix4x2) -> Matrix4x2 {
        return Matrix4x2(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix4x2, rhs: Vector2) -> Vector4 {
        return /*Vector4(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector4, rhs: Matrix4x2) -> Vector2 {
        return /*Vector2(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description)],
            [\(matrix.columns.0.w.description), \(matrix.columns.1.w.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription)],
            [\(matrix.columns.0.w.debugDescription), \(matrix.columns.1.w.debugDescription)],
        ]
        """
    }
}

extension Matrix4x2 { // Equatable
    public static func ==(lhs: Matrix4x2, rhs: Matrix4x2) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix4x2 : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector2...) {
        precondition(elements.count == 4)
        
        self.init(matrix_double2x4(
            [elements[0].x, elements[1].x, elements[2].x, elements[3].x],
            [elements[0].y, elements[1].y, elements[2].y, elements[3].y]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix4x3f {
    fileprivate var matrix: matrix_float3x4

    public init(_ matrix: matrix_float3x4) {
        self.matrix = matrix
    }
}

extension matrix_float3x4 {
    init(_ matrix: Matrix4x3f) {
        self = matrix.matrix
    }
}

extension Matrix4x3f : Matrix {
    public typealias Scalar = Float
    public typealias RowVector = Vector4f
    public typealias ColumnVector = Vector3f
    public typealias Transpose = Matrix3x4f

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 3
    }
    
    public var transpose: Matrix3x4f {
        return Matrix3x4f(matrix.transpose)
    }

    public static var zero: Matrix4x3f {
        return Matrix4x3f(matrix_float3x4())
    }

    public static func +(lhs: Matrix4x3f, rhs: Matrix4x3f) -> Matrix4x3f {
        return Matrix4x3f(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix4x3f, rhs: Matrix4x3f) -> Matrix4x3f {
        return Matrix4x3f(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix4x3f, rhs: Float) -> Matrix4x3f {
        return Matrix4x3f(lhs.matrix * rhs)
    }

    public static func *(lhs: Float, rhs: Matrix4x3f) -> Matrix4x3f {
        return Matrix4x3f(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix4x3f, rhs: Vector3f) -> Vector4f {
        return /*Vector4f(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector4f, rhs: Matrix4x3f) -> Vector3f {
        return /*Vector3f(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description), \(matrix.columns.2.z.description)],
            [\(matrix.columns.0.w.description), \(matrix.columns.1.w.description), \(matrix.columns.2.w.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription), \(matrix.columns.2.z.debugDescription)],
            [\(matrix.columns.0.w.debugDescription), \(matrix.columns.1.w.debugDescription), \(matrix.columns.2.w.debugDescription)],
        ]
        """
    }
}

extension Matrix4x3f { // Equatable
    public static func ==(lhs: Matrix4x3f, rhs: Matrix4x3f) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix4x3f : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector3f...) {
        precondition(elements.count == 4)
        
        self.init(matrix_float3x4(
            [elements[0].x, elements[1].x, elements[2].x, elements[3].x],
            [elements[0].y, elements[1].y, elements[2].y, elements[3].y],
            [elements[0].z, elements[1].z, elements[2].z, elements[3].z]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix4x3 {
    fileprivate var matrix: matrix_double3x4

    public init(_ matrix: matrix_double3x4) {
        self.matrix = matrix
    }
}

extension matrix_double3x4 {
    init(_ matrix: Matrix4x3) {
        self = matrix.matrix
    }
}

extension Matrix4x3 : Matrix {
    public typealias Scalar = Double
    public typealias RowVector = Vector4
    public typealias ColumnVector = Vector3
    public typealias Transpose = Matrix3x4

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 3
    }
    
    public var transpose: Matrix3x4 {
        return Matrix3x4(matrix.transpose)
    }

    public static var zero: Matrix4x3 {
        return Matrix4x3(matrix_double3x4())
    }

    public static func +(lhs: Matrix4x3, rhs: Matrix4x3) -> Matrix4x3 {
        return Matrix4x3(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix4x3, rhs: Matrix4x3) -> Matrix4x3 {
        return Matrix4x3(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix4x3, rhs: Double) -> Matrix4x3 {
        return Matrix4x3(lhs.matrix * rhs)
    }

    public static func *(lhs: Double, rhs: Matrix4x3) -> Matrix4x3 {
        return Matrix4x3(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix4x3, rhs: Vector3) -> Vector4 {
        return /*Vector4(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector4, rhs: Matrix4x3) -> Vector3 {
        return /*Vector3(*/lhs * rhs.matrix/*)*/
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

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description), \(matrix.columns.2.z.description)],
            [\(matrix.columns.0.w.description), \(matrix.columns.1.w.description), \(matrix.columns.2.w.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription), \(matrix.columns.2.z.debugDescription)],
            [\(matrix.columns.0.w.debugDescription), \(matrix.columns.1.w.debugDescription), \(matrix.columns.2.w.debugDescription)],
        ]
        """
    }
}

extension Matrix4x3 { // Equatable
    public static func ==(lhs: Matrix4x3, rhs: Matrix4x3) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix4x3 : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector3...) {
        precondition(elements.count == 4)
        
        self.init(matrix_double3x4(
            [elements[0].x, elements[1].x, elements[2].x, elements[3].x],
            [elements[0].y, elements[1].y, elements[2].y, elements[3].y],
            [elements[0].z, elements[1].z, elements[2].z, elements[3].z]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix4x4f {
    fileprivate var matrix: matrix_float4x4

    public init(_ matrix: matrix_float4x4) {
        self.matrix = matrix
    }
}

extension matrix_float4x4 {
    init(_ matrix: Matrix4x4f) {
        self = matrix.matrix
    }
}

extension Matrix4x4f : SquareMatrix {
    public typealias Scalar = Float
    public typealias RowVector = Vector4f
    public typealias ColumnVector = Vector4f
    public typealias Transpose = Matrix4x4f

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 4
    }
    
    public var transpose: Matrix4x4f {
        return Matrix4x4f(matrix.transpose)
    }

    public static var zero: Matrix4x4f {
        return Matrix4x4f(matrix_float4x4())
    }

    public static func +(lhs: Matrix4x4f, rhs: Matrix4x4f) -> Matrix4x4f {
        return Matrix4x4f(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix4x4f, rhs: Matrix4x4f) -> Matrix4x4f {
        return Matrix4x4f(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix4x4f, rhs: Float) -> Matrix4x4f {
        return Matrix4x4f(lhs.matrix * rhs)
    }

    public static func *(lhs: Float, rhs: Matrix4x4f) -> Matrix4x4f {
        return Matrix4x4f(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix4x4f, rhs: Vector4f) -> Vector4f {
        return /*Vector4f(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector4f, rhs: Matrix4x4f) -> Vector4f {
        return /*Vector4f(*/lhs * rhs.matrix/*)*/
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

    public static func *(lhs: Matrix4x4f, rhs: Matrix4x4f) -> Matrix4x4f {
        return Matrix4x4f(lhs.matrix * rhs.matrix)
    }

    public var inverse: Matrix4x4f {
        return Matrix4x4f(matrix.inverse)
    }

    public static var identity: Matrix4x4f {
        return Matrix4x4f(matrix_identity_float4x4)
    }

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description), \(matrix.columns.3.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description), \(matrix.columns.3.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description), \(matrix.columns.2.z.description), \(matrix.columns.3.z.description)],
            [\(matrix.columns.0.w.description), \(matrix.columns.1.w.description), \(matrix.columns.2.w.description), \(matrix.columns.3.w.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription), \(matrix.columns.3.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription), \(matrix.columns.3.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription), \(matrix.columns.2.z.debugDescription), \(matrix.columns.3.z.debugDescription)],
            [\(matrix.columns.0.w.debugDescription), \(matrix.columns.1.w.debugDescription), \(matrix.columns.2.w.debugDescription), \(matrix.columns.3.w.debugDescription)],
        ]
        """
    }
}

extension Matrix4x4f { // Equatable
    public static func ==(lhs: Matrix4x4f, rhs: Matrix4x4f) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix4x4f : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector4f...) {
        precondition(elements.count == 4)
        
        self.init(matrix_float4x4(
            [elements[0].x, elements[1].x, elements[2].x, elements[3].x],
            [elements[0].y, elements[1].y, elements[2].y, elements[3].y],
            [elements[0].z, elements[1].z, elements[2].z, elements[3].z],
            [elements[0].w, elements[1].w, elements[2].w, elements[3].w]
        ))
    }
}
#endif

#if canImport(simd)
public struct Matrix4x4 {
    fileprivate var matrix: matrix_double4x4

    public init(_ matrix: matrix_double4x4) {
        self.matrix = matrix
    }
}

extension matrix_double4x4 {
    init(_ matrix: Matrix4x4) {
        self = matrix.matrix
    }
}

extension Matrix4x4 : SquareMatrix {
    public typealias Scalar = Double
    public typealias RowVector = Vector4
    public typealias ColumnVector = Vector4
    public typealias Transpose = Matrix4x4

    public var rowCount: Int {
        return 4
    }

    public var columnCount: Int {
        return 4
    }
    
    public var transpose: Matrix4x4 {
        return Matrix4x4(matrix.transpose)
    }

    public static var zero: Matrix4x4 {
        return Matrix4x4(matrix_double4x4())
    }

    public static func +(lhs: Matrix4x4, rhs: Matrix4x4) -> Matrix4x4 {
        return Matrix4x4(lhs.matrix + rhs.matrix)
    }

    public static func -(lhs: Matrix4x4, rhs: Matrix4x4) -> Matrix4x4 {
        return Matrix4x4(lhs.matrix - rhs.matrix)
    }

    public static func *(lhs: Matrix4x4, rhs: Double) -> Matrix4x4 {
        return Matrix4x4(lhs.matrix * rhs)
    }

    public static func *(lhs: Double, rhs: Matrix4x4) -> Matrix4x4 {
        return Matrix4x4(lhs * rhs.matrix)
    }

    public static func *(lhs: Matrix4x4, rhs: Vector4) -> Vector4 {
        return /*Vector4(*/lhs.matrix * rhs/*)*/
    }

    public static func *(lhs: Vector4, rhs: Matrix4x4) -> Vector4 {
        return /*Vector4(*/lhs * rhs.matrix/*)*/
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

    public static func *(lhs: Matrix4x4, rhs: Matrix4x4) -> Matrix4x4 {
        return Matrix4x4(lhs.matrix * rhs.matrix)
    }

    public var inverse: Matrix4x4 {
        return Matrix4x4(matrix.inverse)
    }

    public static var identity: Matrix4x4 {
        return Matrix4x4(matrix_identity_double4x4)
    }

    public var description: String {
        return """
        [
            [\(matrix.columns.0.x.description), \(matrix.columns.1.x.description), \(matrix.columns.2.x.description), \(matrix.columns.3.x.description)],
            [\(matrix.columns.0.y.description), \(matrix.columns.1.y.description), \(matrix.columns.2.y.description), \(matrix.columns.3.y.description)],
            [\(matrix.columns.0.z.description), \(matrix.columns.1.z.description), \(matrix.columns.2.z.description), \(matrix.columns.3.z.description)],
            [\(matrix.columns.0.w.description), \(matrix.columns.1.w.description), \(matrix.columns.2.w.description), \(matrix.columns.3.w.description)],
        ]
        """
    }

    public var debugDescription: String {
        return """
        [
            [\(matrix.columns.0.x.debugDescription), \(matrix.columns.1.x.debugDescription), \(matrix.columns.2.x.debugDescription), \(matrix.columns.3.x.debugDescription)],
            [\(matrix.columns.0.y.debugDescription), \(matrix.columns.1.y.debugDescription), \(matrix.columns.2.y.debugDescription), \(matrix.columns.3.y.debugDescription)],
            [\(matrix.columns.0.z.debugDescription), \(matrix.columns.1.z.debugDescription), \(matrix.columns.2.z.debugDescription), \(matrix.columns.3.z.debugDescription)],
            [\(matrix.columns.0.w.debugDescription), \(matrix.columns.1.w.debugDescription), \(matrix.columns.2.w.debugDescription), \(matrix.columns.3.w.debugDescription)],
        ]
        """
    }
}

extension Matrix4x4 { // Equatable
    public static func ==(lhs: Matrix4x4, rhs: Matrix4x4) -> Bool {
        return lhs.matrix == rhs.matrix
    }
}

extension Matrix4x4 : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector4...) {
        precondition(elements.count == 4)
        
        self.init(matrix_double4x4(
            [elements[0].x, elements[1].x, elements[2].x, elements[3].x],
            [elements[0].y, elements[1].y, elements[2].y, elements[3].y],
            [elements[0].z, elements[1].z, elements[2].z, elements[3].z],
            [elements[0].w, elements[1].w, elements[2].w, elements[3].w]
        ))
    }
}
#endif
