import SwiftUI

@main
struct ObservationFramework_AssignmentApp: App {
    @State private var library = Library()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(library)
        }
    }
}
