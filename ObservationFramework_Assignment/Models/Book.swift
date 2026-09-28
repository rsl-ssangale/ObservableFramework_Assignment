import Foundation
import Observation

@Observable
final class Book: Identifiable {

    let id: UUID
    var title: String
    var author: String
    var authorBio: String
    var publicationYear: Int
    var pageCount: Int
    var genre: String
    var summary: String
    var coverImage: String

    init(id: UUID = UUID(),
         title: String,
         author: String,
         authorBio: String,
         publicationYear: Int,
         pageCount: Int,
         genre: String,
         summary: String,
         coverImage: String) {
        self.id = id
        self.title = title
        self.author = author
        self.authorBio = authorBio
        self.publicationYear = publicationYear
        self.pageCount = pageCount
        self.genre = genre
        self.summary = summary
        self.coverImage = coverImage
    }
}
