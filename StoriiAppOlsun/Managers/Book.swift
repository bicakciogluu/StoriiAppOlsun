import Foundation
import FirebaseFirestore

struct Book: Identifiable, Codable {
    @DocumentID var id: String?
    var unique_id: String
    var name: String
    var total_page_number: Int
    var type: String
    var rating: Int
    var views: Int
    var content: String
    var imageURL: String  // Kitabın kapak resmi URL'si
    
    init(unique_id: String = UUID().uuidString, name: String, total_page_number: Int, type: String, rating: Int = 0, views: Int = 0, content: String, imageURL: String) {
        self.unique_id = unique_id
        self.name = name
        self.total_page_number = total_page_number
        self.type = type
        self.rating = rating
        self.views = views
        self.content = content
        self.imageURL = imageURL  // Resim URL'si tanımlanıyor
    }
}
