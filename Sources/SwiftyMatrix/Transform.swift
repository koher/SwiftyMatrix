import SwiftyVector
import Foundation

#if canImport(simd) // TODO: Remove this after matrix types without simd are implemented.

extension Matrix2x2f {
    public static func scaling(by scales: Vector2f) -> Matrix2x2f {
        return [
            Vector2f(x: scales.x, y: 0),
            Vector2f(x: 0       , y: scales.y),
        ]
    }

    public static func rotation(by angle: Float) -> Matrix2x2f {
        let c = cos(angle)
        let s = sin(angle)
        return [
            Vector2f(x: c, y: -s),
            Vector2f(x: s, y: c),
        ]
    }
}

extension Matrix2x2 {
    public static func scaling(by scales: Vector2) -> Matrix2x2 {
        return [
            Vector2(x: scales.x, y: 0),
            Vector2(x: 0       , y: scales.y),
        ]
    }

    public static func rotation(by angle: Double) -> Matrix2x2 {
        let c = cos(angle)
        let s = sin(angle)
        return [
            Vector2(x: c, y: -s),
            Vector2(x: s, y: c),
        ]
    }
}

extension Matrix3x3f {
    public static func scaling2(by scales: Vector2f) -> Matrix3x3f {
        return [
            Vector3f(x: scales.x, y: 0,        z: 0),
            Vector3f(x: 0       , y: scales.y, z: 0),
            Vector3f(x: 0,        y: 0,        z: 1),
        ]
    }

    public static func rotation2(by angle: Float) -> Matrix3x3f {
        let c = cos(angle)
        let s = sin(angle)
        return [
            Vector3f(x: c, y: -s, z: 0),
            Vector3f(x: s, y: c,  z: 0),
            Vector3f(x: 0, y: 0,  z: 1),
        ]
    }

    public static func translation2(by translation: Vector2f) -> Matrix3x3f {
        return [
            Vector3f(x: 1, y: 0, z: translation.x),
            Vector3f(x: 0, y: 1, z: translation.y),
            Vector3f(x: 0, y: 0, z: 1),
        ]
    }

    public static func scaling(by scales: Vector3f) -> Matrix3x3f {
        return [
            Vector3f(x: scales.x, y: 0,        z: 0),
            Vector3f(x: 0       , y: scales.y, z: 0),
            Vector3f(x: 0       , y: 0,        z: scales.z),
        ]
    }

    public static func rotation(by angle: Float, around axis: Vector3f) -> Matrix3x3f {
        let a = axis.unit
        let c = cos(angle)
        let omc = 1 - c
        let s = sin(angle)
        return [
            Vector3f(x: a.x * a.x * omc + c,       y: a.x * a.y * omc - a.z * s, z: a.x * a.z * omc + a.y * s),
            Vector3f(x: a.y * a.x * omc + a.z * s, y: a.y * a.y * omc + c,       z: a.y * a.z * omc - a.x * s),
            Vector3f(x: a.x * a.z * omc - a.y * s, y: a.y * a.z * omc + a.x * s, z: a.z * a.z * omc + c),
        ]
    }
}

extension Matrix3x3 {
    public static func scaling2(by scales: Vector2) -> Matrix3x3 {
        return [
            Vector3(x: scales.x, y: 0,        z: 0),
            Vector3(x: 0       , y: scales.y, z: 0),
            Vector3(x: 0,        y: 0,        z: 1),
        ]
    }

    public static func rotation2(by angle: Double) -> Matrix3x3 {
        let c = cos(angle)
        let s = sin(angle)
        return [
            Vector3(x: c, y: -s, z: 0),
            Vector3(x: s, y: c,  z: 0),
            Vector3(x: 0, y: 0,  z: 1),
        ]
    }

    public static func translation2(by translation: Vector2) -> Matrix3x3 {
        return [
            Vector3(x: 1, y: 0, z: translation.x),
            Vector3(x: 0, y: 1, z: translation.y),
            Vector3(x: 0, y: 0, z: 1),
        ]
    }

    public static func scaling(by scales: Vector3) -> Matrix3x3 {
        return [
            Vector3(x: scales.x, y: 0,        z: 0),
            Vector3(x: 0       , y: scales.y, z: 0),
            Vector3(x: 0       , y: 0,        z: scales.z),
        ]
    }

    public static func rotation(by angle: Double, around axis: Vector3) -> Matrix3x3 {
        let a = axis.unit
        let c = cos(angle)
        let omc = 1 - c
        let s = sin(angle)
        return [
            Vector3(x: a.x * a.x * omc + c,       y: a.x * a.y * omc - a.z * s, z: a.x * a.z * omc + a.y * s),
            Vector3(x: a.y * a.x * omc + a.z * s, y: a.y * a.y * omc + c,       z: a.y * a.z * omc - a.x * s),
            Vector3(x: a.x * a.z * omc - a.y * s, y: a.y * a.z * omc + a.x * s, z: a.z * a.z * omc + c),
        ]
    }
}

extension Matrix4x4f {
    public static func scaling3(by scales: Vector3f) -> Matrix4x4f {
        return [
            Vector4f(x: scales.x, y: 0,        z: 0,        w: 0),
            Vector4f(x: 0       , y: scales.y, z: 0,        w: 0),
            Vector4f(x: 0       , y: 0,        z: scales.z, w: 0),
            Vector4f(x: 0,        y: 0,        z: 0,        w: 1),
        ]
    }

    public static func rotation3(by angle: Float, around axis: Vector3f) -> Matrix4x4f {
        let a = axis.unit
        let c = cos(angle)
        let omc = 1 - c
        let s = sin(angle)
        return [
            Vector4f(x: a.x * a.x * omc + c,       y: a.x * a.y * omc - a.z * s, z: a.x * a.z * omc + a.y * s, w: 0),
            Vector4f(x: a.y * a.x * omc + a.z * s, y: a.y * a.y * omc + c,       z: a.y * a.z * omc - a.x * s, w: 0),
            Vector4f(x: a.x * a.z * omc - a.y * s, y: a.y * a.z * omc + a.x * s, z: a.z * a.z * omc + c      , w: 0),
            Vector4f(x: 0,                         y: 0,                         z: 0,                         w: 1),
        ]
    }

    public static func translation3(by translation: Vector3f) -> Matrix4x4f {
        return [
            Vector4f(x: 1, y: 0, z: 0, w: translation.x),
            Vector4f(x: 0, y: 1, z: 0, w: translation.y),
            Vector4f(x: 0, y: 0, z: 1, w: translation.z),
            Vector4f(x: 0, y: 0, z: 0, w: 1),
        ]
    }
}

extension Matrix4x4 {
    public static func scaling3(by scales: Vector3) -> Matrix4x4 {
        return [
            Vector4(x: scales.x, y: 0,        z: 0,        w: 0),
            Vector4(x: 0       , y: scales.y, z: 0,        w: 0),
            Vector4(x: 0       , y: 0,        z: scales.z, w: 0),
            Vector4(x: 0,        y: 0,        z: 0,        w: 1),
        ]
    }

    public static func rotation3(by angle: Double, around axis: Vector3) -> Matrix4x4 {
        let a = axis.unit
        let c = cos(angle)
        let omc = 1 - c
        let s = sin(angle)
        return [
            Vector4(x: a.x * a.x * omc + c,       y: a.x * a.y * omc - a.z * s, z: a.x * a.z * omc + a.y * s, w: 0),
            Vector4(x: a.y * a.x * omc + a.z * s, y: a.y * a.y * omc + c,       z: a.y * a.z * omc - a.x * s, w: 0),
            Vector4(x: a.x * a.z * omc - a.y * s, y: a.y * a.z * omc + a.x * s, z: a.z * a.z * omc + c      , w: 0),
            Vector4(x: 0,                         y: 0,                         z: 0,                         w: 1),
        ]
    }

    public static func translation3(by translation: Vector3) -> Matrix4x4 {
        return [
            Vector4(x: 1, y: 0, z: 0, w: translation.x),
            Vector4(x: 0, y: 1, z: 0, w: translation.y),
            Vector4(x: 0, y: 0, z: 1, w: translation.z),
            Vector4(x: 0, y: 0, z: 0, w: 1),
        ]
    }
}

#endif // TODO: Remove this after matrix types without simd are implemented.
