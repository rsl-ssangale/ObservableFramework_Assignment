import Foundation
import Observation

@Observable
final class Library {

    var books: [Book] = SampleBooksData.books
    var selectedBook: Book?
    var searchText: String = ""

    @ObservationIgnored
    var cachedSummary: String = ""

    func addBook(_ book: Book) {
        books.append(book)
    }

    func updateBook(_ book: Book) {
        guard let index = books.firstIndex(where: { $0.id == book.id }) else {
            return
        }

        books[index] = book
    }
}
