import SwiftUI
import Observation

struct ObservationDemoView: View {
    @Environment(Library.self) private var library

    @State private var trackingMessage = "Not registered"

    var body: some View {
        List {
            Section("Property-Level Tracking") {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Books: \(library.books.count)")
                        .font(.headline)
                    Button("Change Unrelated Property") {
                        library.searchText = UUID().uuidString
                    }
                }
            }

            Section("Manual Tracking") {
                VStack(alignment: .leading, spacing: 12) {
                    Text(trackingMessage)
                        .foregroundStyle(.secondary)
                    Button("Change Search Text") {
                        library.searchText = UUID().uuidString
                    }
                    Button("Register Tracking Again") {
                        registerTracking()
                    }
                }
            }
        }
        .navigationTitle("Observation")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            registerTracking()
        }
    }

    private func registerTracking() {
        trackingMessage = "Tracking registered"
        withObservationTracking {
            _ = library.searchText
        } onChange: {
            print("changed")
            Task { @MainActor in
                trackingMessage = "Changed"
            }
        }
    }
}
