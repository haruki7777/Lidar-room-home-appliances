import Foundation

enum ApplianceCategory: String, Codable, CaseIterable, Identifiable {
    case refrigerator
    case kimchiRefrigerator
    case washer
    case dryer
    case washTower

    var id: String { rawValue }

    var title: String {
        switch self {
        case .refrigerator: return "냉장고"
        case .kimchiRefrigerator: return "김치냉장고"
        case .washer: return "세탁기"
        case .dryer: return "건조기"
        case .washTower: return "워시타워"
        }
    }
}

enum DoorType: String, Codable {
    case none
    case singleSwing
    case doubleSwing
    case frontCircle
    case drawer
}

struct Appliance: Identifiable, Codable, Equatable {
    let id: String
    var name: String
    var category: ApplianceCategory
    var widthMm: Double
    var depthMm: Double
    var heightMm: Double
    var doorType: DoorType
    var doorOpenAngleDeg: Double
    var requiredBackClearanceMm: Double
    var requiredSideClearanceMm: Double
    var requiredTopClearanceMm: Double
    var requiredFrontClearanceMm: Double

    static let basicFridge = Appliance(
        id: "basic-fridge-900",
        name: "기본 양문형 냉장고",
        category: .refrigerator,
        widthMm: 900,
        depthMm: 730,
        heightMm: 1800,
        doorType: .doubleSwing,
        doorOpenAngleDeg: 110,
        requiredBackClearanceMm: 50,
        requiredSideClearanceMm: 50,
        requiredTopClearanceMm: 100,
        requiredFrontClearanceMm: 700
    )
}
