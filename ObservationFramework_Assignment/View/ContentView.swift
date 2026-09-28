import SwiftUI

struct ContentView: View {
    // Required concept: @Environment
    @Environment(Library.self) private var library

    @State private var showingAddBook = false

    var body: some View {
        NavigationStack {
            List {
                ForEach(library.books) { book in
                    NavigationLink {
                        BookDetailView(book: book)
                    } label: {
                        HStack(spacing: 16) {
                            Image(systemName: book.coverImage)
                                .font(.title2)
                                .frame(width: 60)

                            VStack(alignment: .leading, spacing: 4) {
                                Text(book.title)
                                    .font(.headline)

                                Text(book.author)
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)

                                Text("\(book.publicationYear)")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Library")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingAddBook = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }

                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink("Demo") {
                        ObservationDemoView()
                    }
                }
            }
            .sheet(isPresented: $showingAddBook) {
                NavigationStack {
                    AddEditBookView(
                        isNewBook: true,
                        book: Book(title: "",
                                   author: "",
                                   authorBio: "",
                                   publicationYear: 2026,
                                   pageCount: 0,
                                   genre: "",
                                   summary: "",
                                   coverImage: "book.closed.fill"),)
                }
            }
        }
    }
}
