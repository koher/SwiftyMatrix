#if canImport(CoreGraphics)
import CoreGraphics

public func *(lhs: CGAffineTransform, rhs: CGAffineTransform) -> CGAffineTransform {
    return lhs.concatenating(rhs)
}

#endif
