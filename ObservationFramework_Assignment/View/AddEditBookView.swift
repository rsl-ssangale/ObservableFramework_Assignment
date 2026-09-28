import SwiftUI

struct AddEditBookView: View {
    @Environment(Library.self) private var library

    let isNewBook: Bool
    let book: Book

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        @Bindable var book = book

        Form {
            Section("Book Information") {
                TextField("Title", text: $book.title)
                TextField("Author", text: $book.author)
                TextField("Author Bio", text: $book.authorBio)
                TextField("Genre", text: $book.genre)
                TextField("Cover Image", text: $book.coverImage)
            }

            Section("Publication") {
                TextField("Publication Year", value: $book.publicationYear, format: .number)
                TextField("Page Count", value: $book.pageCount, format: .number)
            }

            Section("Summary") {
                TextField("Summary", text: $book.summary, axis: .vertical)
                    .lineLimit(4...8)
            }
        }
        .navigationTitle(isNewBook ? "Add Book" : "Edit Book")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }

            ToolbarItem(placement: .topBarTrailing) {
                Button(isNewBook ? "Add" : "Save") {
                    if isNewBook {
                        library.addBook(book)
                    } else {
                        library.updateBook(book)
                    }
                    dismiss()
                }
            }
        }
    }
}
