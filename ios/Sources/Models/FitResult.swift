import Foundation

enum FitStatus: String, Codable {
    case ok
    case warning
    case blocked
    case unknown

    var title: String {
        switch self {
        case .ok: return "설치 가능"
        case .warning: return "주의 필요"
        case .blocked: return "간섭 있음"
        case .unknown: return "확인 필요"
        }
    }
}

struct FitResult: Codable, Equatable {
    var status: FitStatus
    var maxDoorOpenAngle: Double
    var messages: [String]
    var recommendedExtraClearanceMm: Double
    var measurementErrorMm: Double

    static let demo = FitResult(
        status: .warning,
        maxDoorOpenAngle: 90,
        messages: [
            "현재는 데모 판정입니다.",
            "실제 충돌 검사는 RoomPlan 벽 데이터 연결 후 정확해집니다."
        ],
        recommendedExtraClearanceMm: 50,
        measurementErrorMm: 30
    )
}
