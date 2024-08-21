import SwiftUI
import Firebase

class BookManager: ObservableObject {
    @Published var books: [Book] = []
    
    private var db = Firestore.firestore()
    
    init() {
        fetchBooks()
    }
    
    // Kitap Ekleme Fonksiyonu
    func addBook(name: String, total_page_number: Int, type: String, content: String, imageURL: String) {
        let book = Book(name: name, total_page_number: total_page_number, type: type, content: content, imageURL: imageURL)
        
        do {
            _ = try db.collection("books").addDocument(from: book)
            print("Book added successfully")
        } catch let error {
            print("Error adding book: \(error)")
        }
    }
    
    // Kitapları Çekme Fonksiyonu (Opsiyonel)
    func fetchBooks() {
        db.collection("books").getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error getting books: \(error)")
            } else {
                self.books = querySnapshot?.documents.compactMap { document in
                    try? document.data(as: Book.self)
                } ?? []
            }
        }
    }
}
