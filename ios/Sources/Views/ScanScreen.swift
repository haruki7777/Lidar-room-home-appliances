import SwiftUI

struct RoomScanScreen: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Scan")
                .font(.title)
            Text("RoomPlan will be connected in the next patch.")
                .font(.footnote)
        }
        .padding()
    }
}
