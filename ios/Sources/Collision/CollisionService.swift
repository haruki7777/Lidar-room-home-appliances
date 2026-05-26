import Foundation

final class CollisionService {
    func evaluateDemo(appliance: Appliance, isDoorOpen: Bool) -> FitResult {
        if isDoorOpen {
            return FitResult(
                status: .warning,
                maxDoorOpenAngle: appliance.doorOpenAngleDeg,
                messages: [
                    "문 열림 시뮬레이션이 켜져 있습니다.",
                    "RoomPlan 벽 데이터가 연결되면 실제 간섭 검사를 수행합니다.",
                    "현재 권장 안전 여유는 ±30mm 이상입니다."
                ],
                recommendedExtraClearanceMm: 50,
                measurementErrorMm: 30
            )
        }

        return FitResult(
            status: .unknown,
            maxDoorOpenAngle: 0,
            messages: ["문을 열어 시뮬레이션을 시작하세요."],
            recommendedExtraClearanceMm: 0,
            measurementErrorMm: 30
        )
    }
}
