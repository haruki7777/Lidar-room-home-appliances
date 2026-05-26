import SwiftUI

struct ARPlacementScreen: View {
    let appliance: Appliance
    @State private var opened = false

    var body: some View {
        VStack(spacing: 20) {
            Text(appliance.name)
            Text(opened ? "open" : "closed")
            Button(opened ? "Close" : "Open") {
                opened.toggle()
            }
        }
    }
}
