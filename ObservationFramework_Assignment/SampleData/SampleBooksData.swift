import Foundation

enum SampleBooksData {

    static let books: [Book] = [
        Book(title: "The Great Gatsby",
             author: "F. Scott Fitzgerald",
             authorBio: "American novelist and short story writer.",
             publicationYear: 1925,
             pageCount: 180,
             genre: "Classic",
             summary: "A story about wealth, ambition, love, and the American Dream.",
             coverImage: "book.closed.fill"),

        Book(title: "1984",
             author: "George Orwell",
             authorBio: "English novelist, essayist, and critic.",
             publicationYear: 1949,
             pageCount: 328,
             genre: "Dystopian",
             summary: "A dystopian novel about surveillance, control, and individual freedom.",
             coverImage: "eye.fill"),

        Book(title: "To Kill a Mockingbird",
             author: "Harper Lee",
             authorBio: "American novelist known for her classic literary works.",
             publicationYear: 1960,
             pageCount: 281,
             genre: "Fiction",
             summary: "A coming-of-age story exploring justice, morality, and prejudice.",
             coverImage: "book.fill"),

        Book(title: "The Hobbit",
             author: "J.R.R. Tolkien",
             authorBio: "English writer and philologist.",
             publicationYear: 1937,
             pageCount: 310,
             genre: "Fantasy",
             summary: "Bilbo Baggins goes on an unexpected adventure with a group of dwarves.",
             coverImage: "mountain.2.fill"),

        Book(title: "Pride and Prejudice",
             author: "Jane Austen",
             authorBio: "English novelist known for her social commentary.",
             publicationYear: 1813,
             pageCount: 279,
             genre: "Romance",
             summary: "A classic story about relationships, social expectations, and misunderstandings.",
             coverImage: "heart.fill"),

        Book(title: "The Alchemist",
             author: "Paulo Coelho",
             authorBio: "Brazilian novelist and lyricist.",
             publicationYear: 1988,
             pageCount: 208,
             genre: "Adventure",
             summary: "A young shepherd follows his dreams in search of a hidden treasure.",
             coverImage: "sparkles"),

        Book(title: "Atomic Habits",
             author: "James Clear",
             authorBio: "Author and speaker focused on habits and continuous improvement.",
             publicationYear: 2018,
             pageCount: 320,
             genre: "Self-Help",
             summary: "A practical guide to building good habits and breaking bad ones.",
             coverImage: "chart.line.uptrend.xyaxis")
    ]
}
