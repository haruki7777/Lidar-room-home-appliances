import simd

struct Box3D: Equatable {
    var center: SIMD3<Float>
    var size: SIMD3<Float>

    var min: SIMD3<Float> { center - size / 2 }
    var max: SIMD3<Float> { center + size / 2 }

    func intersects(_ other: Box3D) -> Bool {
        min.x <= other.max.x && max.x >= other.min.x &&
        min.y <= other.max.y && max.y >= other.min.y &&
        min.z <= other.max.z && max.z >= other.min.z
    }
}
