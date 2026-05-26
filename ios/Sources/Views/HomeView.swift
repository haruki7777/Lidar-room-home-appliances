import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()
                Text("Lidar Home Appliances")
                    .font(.largeTitle.bold())
                Text("AR appliance fit check MVP")
                    .foregroundStyle(.secondary)
                NavigationLink("Open AR Demo") {
                    ARPlacementScreen(appliance: .basicFridge)
                }
                .buttonStyle(.borderedProminent)
                NavigationLink("Open Room Scan") {
                    RoomScanScreen()
                }
                .buttonStyle(.bordered)
                Spacer()
            }
            .padding()
            .navigationTitle("FitAR")
        }
    }
}
