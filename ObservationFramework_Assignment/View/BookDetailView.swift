import SwiftUI

struct BookDetailView: View {
    let book: Book

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(systemName: book.coverImage)
                    .font(.system(size: 80))
                    .frame(maxWidth: .infinity)
                    .padding(.top, 20)

                Text(book.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                VStack(alignment: .leading, spacing: 6) {
                    Text(book.author)
                        .font(.title2)
                        .fontWeight(.semibold)

                    Text(book.authorBio)
                        .font(.body)
                        .foregroundStyle(.secondary)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Text("Book Information")
                        .font(.headline)

                    HStack {
                        Text("Publication Year")
                        Spacer()
                        Text("\(book.publicationYear)")
                            .foregroundStyle(.secondary)
                    }

                    HStack {
                        Text("Page Count")
                        Spacer()
                        Text("\(book.pageCount)")
                            .foregroundStyle(.secondary)
                    }

                    HStack {
                        Text("Genre")
                        Spacer()
                        Text(book.genre)
                            .foregroundStyle(.secondary)
                    }
                }

                Divider()

                VStack(alignment: .leading, spacing: 8) {
                    Text("Summary")
                        .font(.headline)
                    Text(book.summary)
                        .font(.body)
                }
            }
            .padding()
        }
        .navigationTitle("Book Details")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    AddEditBookView(isNewBook: false, book: book)
                } label: {
                    Text("Edit")
                }
            }
        }
    }
}
